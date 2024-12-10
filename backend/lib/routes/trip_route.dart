import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'package:backend/utils/validate_payload.dart';
import 'package:backend/utils/extract_updatable_fields.dart';
import 'dart:convert';

class TripRoute {
  final prisma = PrismaSingleton.client;

  Router get router {
    final router = Router();

    Future<Response> getAllTrips(Request request) async {
      try {
        var trips = await prisma.trip.findMany();
        var tripList = trips.map((trip) => trip.toJson()).toList();

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
        final trip = await prisma.trip
            .findUnique(where: TripWhereUniqueInput(id: tripId));

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

    Future<Response> createTrip(Request request) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        const requiredFields = ['tripName', 'startDate', 'endDate'];

        final validPayload = isValidPayload(payload, requiredFields, {});
        // validate payload
        if (!validPayload) {
          return Response(400,
              body: json.encode({'error': 'Missing required fields'}));
        }

        final trip = await prisma.trip.create(
            data: PrismaUnion.$1(TripCreateInput(
                tripName: payload["tripName"],
                startDate: payload["starteDate"],
                endDate: payload["endDate"])));

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
          'isShared'
        ];

        final fieldsToUpdate = extractUpdatableFields(payload, updatableFields);

        if (fieldsToUpdate.isEmpty) {
          return Response(400, body: 'NO_VALID_FIELDS_TO_UPDATE');
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
                ? PrismaUnion.$1(fieldsToUpdate['startDate'])
                : null,
            endDate: fieldsToUpdate['endDate'] != null
                ? PrismaUnion.$1(fieldsToUpdate['endDate'])
                : null,
            isShared: fieldsToUpdate['isShared'] != null
                ? PrismaUnion.$1(bool.parse(fieldsToUpdate['isShared']))
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

    router.get('/', getAllTrips);
    router.get('/<tripId>', getTripById);
    router.post('/', createTrip);
    router.put('/<tripId>', updateTrip);
    router.delete('/<tripId>', deleteTrip);
    return router;
  }
}
