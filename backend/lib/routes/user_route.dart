import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
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

    Future<Response> createUser(Request request) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        // validate payload
        if (payload == null ||
            payload['email'] == null ||
            payload['providerId'] == null ||
            (payload['loginType'] == null &&
                !!LoginType.values.any(
                    (loginType) => loginType.name == payload['loginType']))) {
          return Response(400,
              body: json.encode({'error': 'Missing required fields'}));
        }
        final user = await prisma.user.create(
            data: PrismaUnion.$1(
          UserCreateInput(
              email: payload['email'],
              username: PrismaUnion.$1(payload['username']),
              password: PrismaUnion.$1(payload['password']),
              providerId: payload['providerId'],
              loginType: LoginType.values.firstWhere(
                  (loginType) => loginType.name == payload['loginType'])),
        ));

        return Response.ok(
          json.encode(user.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    router.get('/', getAllUsers);
    // router.get('/<id>', _getUserById);
    router.post('/', createUser);
    // router.put('/<id>', _updateUser);
    // router.delete('/<id>', _deleteUser);

    return router;
  }
}
