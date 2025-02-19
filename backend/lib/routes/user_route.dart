import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'package:backend/utils/validate_payload.dart';
import 'package:backend/utils/extract_updatable_fields.dart';
import 'package:backend/handlers/firebase_user_handler.dart';
import 'dart:convert';

class UserRoute {
  final prisma = PrismaSingleton.client;
  final FirebaseUserHandler firebaseUserHandler = FirebaseUserHandler();

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
      print("hello");
      try {
        final payload = jsonDecode(await request.readAsString());
        print(payload);
        const requiredFields = [
          'firebaseUid',
          'email',
          'providerId',
          'loginType'
        ];
        const validateEnums = {
          'loginType': LoginType.values,
        };

        if (payload['loginType'] == 'EMAIL' &&
            (payload['email'] == null || payload['password'] == null)) {
          return Response(400,
              body: json.encode({'error': 'Missing email or password field'}));
        }

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
            providerId: payload['providerId'],
            loginType: LoginType.values.firstWhere(
                (loginType) => loginType.name == payload['loginType']),
            username: payload['username'] != null
                ? PrismaUnion.$1(payload['username'])
                : null,
            password: payload['password'] != null
                ? PrismaUnion.$1(payload['password'])
                : null,
            profilePictureUrl: payload['profilePictureUrl'] != null
                ? PrismaUnion.$1(payload['profilePictureUrl'])
                : null,
            bio: payload['bio'] != null ? PrismaUnion.$1(payload['bio']) : null,
          ),
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
      try {
        final payload = jsonDecode(await request.readAsString());

        const updatableFields = [
          'firebaseUid',
          'email',
          'username',
          'password',
          'providerId',
          'loginType',
          'profilePictureUrl',
          'bio',
        ];

        const validateEnums = {
          'loginType': LoginType.values,
        };

        final fieldsToUpdate = extractUpdatableFields(payload, updatableFields);

        if (fieldsToUpdate.isEmpty) {
          return Response(400, body: 'NO_VALID_FIELDS_TO_UPDATE');
        }

        if (fieldsToUpdate.containsKey("loginType")) {
          final validPayload =
              isValidPayload(fieldsToUpdate, [], validateEnums);
          if (!validPayload) {
            return Response(400,
                body: json.encode({'error': 'Invalid login type'}));
          }
        }

        final updatedUser = await prisma.user.update(
          where: UserWhereUniqueInput(id: userId),
          data: PrismaUnion.$1(UserUpdateInput(
            firebaseUid: fieldsToUpdate['firebaseUid'] != null
                ? PrismaUnion.$1(fieldsToUpdate['firebaseUid'])
                : null,
            email: fieldsToUpdate['email'] != null
                ? PrismaUnion.$1(fieldsToUpdate['email'])
                : null,
            username: fieldsToUpdate['username'] != null
                ? PrismaUnion.$1(fieldsToUpdate['username'])
                : null,
            password: fieldsToUpdate['password'] != null
                ? PrismaUnion.$1(fieldsToUpdate['password'])
                : null,
            providerId: fieldsToUpdate['providerId'] != null
                ? PrismaUnion.$1(fieldsToUpdate['providerId'])
                : null,
            loginType: fieldsToUpdate['loginType'] != null
                ? PrismaUnion.$1(fieldsToUpdate['loginType'])
                : null,
            profilePictureUrl: fieldsToUpdate['profilePictureUrl'] != null
                ? PrismaUnion.$1(fieldsToUpdate['profilePictureUrl'])
                : null,
            bio: fieldsToUpdate['bio'] != null
                ? PrismaUnion.$1(fieldsToUpdate['bio'])
                : null,
          )),
        );

        if (updatedUser == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(updatedUser.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
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

    Future<Response> getAllTrips(Request request, String userId) async {
      try {
        var trips = await prisma.trip.findMany(
          where: TripWhereInput(
              usersOnTrips: UsersOnTripsListRelationFilter(
                  some:
                      UsersOnTripsWhereInput(userId: PrismaUnion.$2(userId)))),
          include: TripInclude(
              places: PrismaUnion.$1(true), usersOnTrips: PrismaUnion.$1(true)),
        );

        var tripList = trips.map((trip) {
          var tripJson = trip.toJson();
          tripJson['UsersOnTrips'] = trip.usersOnTrips
                  ?.map((userOnTrip) => userOnTrip.toJson())
                  .toList() ??
              [];
          tripJson['places'] =
              trip.places?.map((place) => place.toJson()).toList() ?? [];
          return tripJson;
        }).toList();

        return Response.ok(
          json.encode(tripList),
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
    router.put('/<userId>', updateUser);
    router.delete('/<userId>', deleteUser);

    router.get('/<userId>/trips', getAllTrips);

    router.get(
        '/firebase/<firebaseUid>', firebaseUserHandler.getUserByFirebaseUid);
    router.delete('/firebase/<firebaseUid>', firebaseUserHandler.deleteUser);
    router.put('/firebase/<firebaseUid>', firebaseUserHandler.updateUser);
    router.get(
        '/firebase/<firebaseUid>/trips', firebaseUserHandler.getAllTrips);

    return router;
  }
}
