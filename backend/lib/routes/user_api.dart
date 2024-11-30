import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'dart:convert';

class UserApi {
  Router get router {
    final router = Router();
    final prisma = PrismaSingleton.client;

    router.get('/', (Request request) async {

      try {
        var users = await prisma.users.findMany();
        var usersJson = users.map((user) => user.toJson()).toList();

        return Response.ok(
          json.encode(usersJson),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    });

    return router;
  }
}
