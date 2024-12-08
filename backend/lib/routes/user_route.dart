import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'dart:convert';

class UserRoute {
  final prisma = PrismaSingleton.client;

  Router get router {
    final router = Router();

    Future<Response> getAllUsers(Request request) async {
      try {
        var users = await prisma.user.findMany();
        var userList = users.map((user) => user.toJson()).toList();

        return Response.ok(
          json.encode(userList),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    router.get('/', getAllUsers);
    // router.get('/<id>', _getUserById);
    // router.post('/', _createUser);
    // router.put('/<id>', _updateUser);
    // router.delete('/<id>', _deleteUser);

    return router;
  }
}
