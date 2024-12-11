import 'package:backend/prisma.dart';
import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import 'package:backend/utils/validate_payload.dart';
import 'package:backend/utils/extract_updatable_fields.dart';
import 'dart:convert';

class FirebaseUserHandler {
  final prisma = PrismaSingleton.client;

  Future<Response> getUserByFirebaseUid(
      Request request, String firebaseUid) async {
    try {
      final user = await prisma.user
          .findUnique(where: UserWhereUniqueInput(firebaseUid: firebaseUid));

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

  Future<Response> updateUser(Request request, String firebaseUid) async {
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
        final validPayload = isValidPayload(fieldsToUpdate, [], validateEnums);
        if (!validPayload) {
          return Response(400,
              body: json.encode({'error': 'Invalid login type'}));
        }
      }

      final updatedUser = await prisma.user.update(
        where: UserWhereUniqueInput(firebaseUid: firebaseUid),
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

  Future<Response> deleteUser(Request request, String firebaseUid) async {
    try {
      final user = await prisma.user
          .delete(where: UserWhereUniqueInput(firebaseUid: firebaseUid));

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

  Future<Response> getAllTrips(Request request, String firebaseUid) async {
    try {
      var trips = await prisma.trip.findMany(
        where: TripWhereInput(
            usersOnTrips: UsersOnTripsListRelationFilter(
                some: UsersOnTripsWhereInput(
                    user: PrismaUnion.$2(UserWhereInput(
                        firebaseUid: PrismaUnion.$2(firebaseUid)))))),
        include: TripInclude(usersOnTrips: PrismaUnion.$1(true)),
      );

      var tripList = trips.map((trip) {
        var tripJson = trip.toJson();
        tripJson['UsersOnTrips'] = trip.usersOnTrips
                ?.map((userOnTrip) => userOnTrip.toJson())
                .toList() ??
            [];
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
}
