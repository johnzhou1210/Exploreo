import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'package:backend/utils/validate_payload.dart';
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

        const requiredFields = [
          'firebaseUid',
          'email',
          'providerId',
          'loginType'
        ];
        const validateEnums = {
          'loginType': LoginType.values,
        };

        final validPayload =
            isValidPayload(payload, requiredFields, validateEnums);
        // validate payload
        if (!validPayload) {
          return Response(400,
              body: json.encode({'error': 'Missing required fields'}));
        }
        final user = await prisma.user.create(
            data: PrismaUnion.$1(
          UserCreateInput(
              firebaseUid: payload['firebaseUid'],
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

    Future<Response> getUserById(Request request, String userId) async {
      try {
        final user = await prisma.user
            .findUnique(where: UserWhereUniqueInput(id: userId));

        if (user == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(user.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> updateUser(Request request, String userId) async {
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    Future<Response> deleteUser(Request request, String userId) async {
      try {
        final user =
            await prisma.user.delete(where: UserWhereUniqueInput(id: userId));

        if (user == null) {
          return Response(404, body: 'NOT_FOUND');
        }

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
    router.get('/<userId>', getUserById);
    router.post('/', createUser);
    router.put('/<id>', updateUser);
    router.delete('/<id>', deleteUser);

    return router;
  }
}
