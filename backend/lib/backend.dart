import 'dart:io';

import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;

const _hostname = 'localhost';
const _port = 8080;

void main(List<String> args) async {
  final server = await io.serve(
      (request) => shelf.Response.ok('hello world'), _hostname, 8080);
  print('Serving at httt://${server.address.host}:${_port}');
}
