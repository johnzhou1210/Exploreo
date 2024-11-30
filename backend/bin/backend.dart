
import "package:shelf_router/shelf_router.dart";
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'package:backend/user_api.dart';

// const _hostname = 'localhost';
// const _port = 8080;

// void main(List<String> args) async {
//   var app = Router();
//   app.mount('/user/', userApi().router);
//   app.get('/hello', (Request request) {
//     Response.ok('Hello hit backend');
//   });
//   final server = await shelf_io.serve(app, _hostname, 8080);
//   print('Serving at httt://${server.address.host}:${_port}');
// }

void main() async {
  var app = Router();

  app.mount('/user', UserApi().router.call);
  app.get('/hello', (Request request) {
    return Response.ok('Hello hit backend');
  });

  app.all('/<path|.*>', _echoRequest);
  var handler =
      const Pipeline().addMiddleware(logRequests()).addHandler(app.call);

  var server = await shelf_io.serve(handler, 'localhost', 8080);

  // Enable content compression
  server.autoCompress = true;

  print('Serving at http://${server.address.host}:${server.port}');
}

Response _echoRequest(Request request) =>
    Response.ok('Request for "${request.url}"');
