import 'dart:io';

import "package:shelf_router/shelf_router.dart";
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;


import 'package:backend/user_api.dart';
const _hostname = 'localhost';
const _port = 8080;

void main(List<String> args) async {
  var app = Router();
  app.mount('/user/', userApi().router)
  app.get('/hello', (Request request) {
    Response.ok('Hello hit backend');
  });
  final server = await io.serve(
      app, _hostname, 8080);
  print('Serving at httt://${server.address.host}:${_port}');
}
