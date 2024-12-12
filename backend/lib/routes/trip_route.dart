import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'package:backend/utils/validate_payload.dart';
import 'package:backend/utils/validate_datetime.dart';
import 'package:backend/utils/extract_updatable_fields.dart';

import 'dart:convert';

class TripRoute {
  final prisma = PrismaSingleton.client;

  Router get router {
    final router = Router();

    Future<Response> getAllTrips(Request request) async {
      try {
        var trips = await prisma.trip.findMany(
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

    Future<Response> getTripById(Request request, String tripId) async {
      try {
        final trip = await prisma.trip.findUnique(
            where: TripWhereUniqueInput(id: tripId),
            include: TripInclude(
                places: PrismaUnion.$1(true),
                usersOnTrips: PrismaUnion.$1(true)));

        if (trip == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        final tripJson = trip.toJson();
        tripJson['UsersOnTrips'] = trip.usersOnTrips
                ?.map((userOnTrip) => userOnTrip.toJson())
                .toList() ??
            [];
        tripJson['places'] =
            trip.places?.map((place) => place.toJson()).toList() ?? [];

        return Response.ok(
          json.encode(tripJson),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> createTrip(Request request) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        const requiredFields = ['userId', 'tripName', 'startDate', 'endDate'];

        final validPayload = isValidPayload(payload, requiredFields, {});
        // validate payload
        if (!validPayload) {
          return Response(400,
              body: json.encode({'error': 'Missing required fields'}));
        }

        if (!isValidDateTime(payload['startDate']) ||
            !isValidDateTime(payload['endDate'])) {
          return Response(400,
              body: json.encode({'error': 'Invalid date time format'}));
        }

        final trip = await prisma.trip.create(
          data: PrismaUnion.$1(TripCreateInput(
              tripName: payload["tripName"],
              startDate: DateTime.parse(payload["startDate"]),
              endDate: DateTime.parse(payload["endDate"]),
              description: payload['description'] != null
                  ? PrismaUnion.$1(payload['description'])
                  : null,
              isShared: payload['isShared'] != null
                  ? bool.parse(payload['isShared'])
                  : null,
              imageUrl: payload['imageUrl'] != null
                  ? PrismaUnion.$1(payload['imageUrl'])
                  : null,
              notes: payload['notes'] != null
                  ? PrismaUnion.$1(payload['notes'])
                  : null,
              usersOnTrips: UsersOnTripsCreateNestedManyWithoutTripInput(
                create: PrismaUnion.$1(
                  UsersOnTripsCreateWithoutTripInput(
                    role: Role.owner,
                    user: UserCreateNestedOneWithoutUsersOnTripsInput(
                      connect: UserWhereUniqueInput(id: payload['userId']),
                    ),
                  ),
                ),
              ))),
        );

        return Response.ok(
          json.encode(trip.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> updateTrip(Request request, String tripId) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        const updatableFields = [
          'tripName',
          'description',
          'startDate',
          'endDate',
          'isShared',
          'imageUrl',
          'notes',
        ];

        final fieldsToUpdate = extractUpdatableFields(payload, updatableFields);

        if (fieldsToUpdate.isEmpty) {
          return Response(400, body: 'NO_VALID_FIELDS_TO_UPDATE');
        }

        if ((payload['startDate'] != null &&
                !isValidDateTime(payload['startDate'])) ||
            (payload['endDate'] != null &&
                !isValidDateTime(payload['endDate']))) {
          return Response(400,
              body: json.encode({'error': 'Invalid date time format'}));
        }

        final updatedTrip = await prisma.trip.update(
          where: TripWhereUniqueInput(id: tripId),
          data: PrismaUnion.$1(TripUpdateInput(
            tripName: fieldsToUpdate['tripName'] != null
                ? PrismaUnion.$1(fieldsToUpdate['tripName'])
                : null,
            description: fieldsToUpdate['description'] != null
                ? PrismaUnion.$1(fieldsToUpdate['description'])
                : null,
            startDate: fieldsToUpdate['startDate'] != null
                ? PrismaUnion.$1(DateTime.parse(fieldsToUpdate["startDate"]))
                : null,
            endDate: fieldsToUpdate['endDate'] != null
                ? PrismaUnion.$1(DateTime.parse(fieldsToUpdate['endDate']))
                : null,
            isShared: fieldsToUpdate['isShared'] != null
                ? PrismaUnion.$1(bool.parse(fieldsToUpdate['isShared']))
                : null,
            imageUrl: fieldsToUpdate['imageUrl'] != null
                ? PrismaUnion.$1(fieldsToUpdate['imageUrl'])
                : null,
            notes: fieldsToUpdate['notes'] != null
                ? PrismaUnion.$1(fieldsToUpdate['notes'])
                : null,
          )),
        );

        if (updatedTrip == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(updatedTrip.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> deleteTrip(Request request, String tripId) async {
      try {
        final trip =
            await prisma.trip.delete(where: TripWhereUniqueInput(id: tripId));

        if (trip == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(trip.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> getAllPlaces(Request request, String tripId) async {
      try {
        var places = await prisma.place.findMany(
          where: PlaceWhereInput(tripId: PrismaUnion.$2(tripId)),
          include: PlaceInclude(tags: PrismaUnion.$1(true)),
        );
        var placeList = places.map((place) {
          final placeJson = place.toJson();
          placeJson['tags'] =
              place.tags?.map((tag) => tag.toJson()).toList() ?? [];
          return placeJson;
        }).toList();

        return Response.ok(
          json.encode(placeList),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    router.get('/', getAllTrips);
    router.get('/<tripId>', getTripById);
    router.post('/', createTrip);
    router.put('/<tripId>', updateTrip);
    router.delete('/<tripId>', deleteTrip);

    router.get('/<tripId>/places', getAllPlaces);

    return router;
  }
}
