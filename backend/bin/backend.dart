import "package:shelf_router/shelf_router.dart";
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_docker_shutdown/shelf_docker_shutdown.dart';
import 'dart:io';

import 'package:backend/routes/user_route.dart';
import 'package:backend/routes/trip_route.dart';
import 'package:backend/routes/tag_route.dart';
import 'package:backend/routes/place_route.dart';
import 'package:backend/prisma.dart';

import 'package:backend/middleware/auth_middleware.dart';
import 'package:dotenv/dotenv.dart';

final env = DotEnv(includePlatformEnvironment: true)..load();

void main() async {
  final apiKey = env['FIREBASE_API_KEY'];
  final prisma = PrismaSingleton.client;
  var app = Router();

  app.mount('/users', UserRoute().router.call);
  app.mount('/trips', TripRoute().router.call);
  app.mount('/tags', TagRoute().router.call);
  app.mount('/places', PlaceRoute().router.call);

  app.get('/hello', (Request request) async {
    return Response.ok("Hello hit backend");
  });

  app.all('/<path|.*>', _echoRequest);
  var handler = const Pipeline()
      .addMiddleware(logRequests())
      // .addMiddleware(authMiddleware(apiKey!))
      .addHandler(app.call);

  try {
    var server = await shelf_io.serve(handler, InternetAddress.anyIPv4, 8080);
    // Enable content compression
    server.autoCompress = true;
    print('Serving at http://${server.address.host}:${server.port}');

    await server.closeOnTermSignal();

    await prisma.$disconnect();
  } catch (e) {
    // Handle error here

    await prisma.$disconnect();
  }
}

Response _echoRequest(Request request) =>
    Response.ok('Request for "${request.url}"');
