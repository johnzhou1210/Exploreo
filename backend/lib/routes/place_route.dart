import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'package:backend/utils/validate_payload.dart';
import 'package:backend/utils/validate_datetime.dart';
import 'package:backend/utils/extract_updatable_fields.dart';
import 'dart:convert';

class PlaceRoute {
  final prisma = PrismaSingleton.client;

  Router get router {
    final router = Router();

    Future<Response> getAllPlaces(Request request) async {
      try {
        var places = await prisma.place.findMany();
        var placeList = places.map((place) => place.toJson()).toList();

        return Response.ok(
          json.encode(placeList),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> getPlaceById(Request request, String placeId) async {
      try {
        final trip = await prisma.place
            .findUnique(where: PlaceWhereUniqueInput(id: placeId));

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

    Future<Response> createPlace(Request request) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        const requiredFields = ['tripId', 'placeName', 'tripId'];

        final validPayload = isValidPayload(payload, requiredFields, {});
        // validate payload
        if (!validPayload) {
          return Response(400,
              body: json.encode({'error': 'Missing required fields'}));
        }

        if ((payload['startDate'] != null &&
                !isValidDateTime(payload['startDate'])) ||
            (payload['endDate'] != null &&
                !isValidDateTime(payload['endDate']))) {
          return Response(400,
              body: json.encode({'error': 'Invalid date time format'}));
        }

        final place = await prisma.place.create(
            data: PrismaUnion.$1(PlaceCreateInput(
                placeName: payload["placeName"],
                startDate: payload['startDate'] != null
                    ? PrismaUnion.$1(DateTime.parse(payload["startDate"]))
                    : null,
                endDate: payload['endDate'] != null
                    ? PrismaUnion.$1(DateTime.parse(payload['endDate']))
                    : null,
                trip: TripCreateNestedOneWithoutPlacesInput(
                    connect: TripWhereUniqueInput(id: payload["tripId"])))));

        return Response.ok(
          json.encode(place.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> updatePlace(Request request, String placeId) async {
      try {
        final payload = jsonDecode(await request.readAsString());

        const updatableFields = [
          'placeName',
          'description',
          'startDate',
          'endDate',
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

        final updatedPlace = await prisma.place.update(
          where: PlaceWhereUniqueInput(id: placeId),
          data: PrismaUnion.$1(PlaceUpdateInput(
            placeName: fieldsToUpdate['placeName'] != null
                ? PrismaUnion.$1(fieldsToUpdate['placeName'])
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
          )),
        );

        if (updatedPlace == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(updatedPlace.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    Future<Response> deletePlace(Request request, String placeId) async {
      try {
        final deletedPlace = await prisma.place
            .delete(where: PlaceWhereUniqueInput(id: placeId));

        if (deletedPlace == null) {
          return Response(404, body: 'NOT_FOUND');
        }

        return Response.ok(
          json.encode(deletedPlace.toJson()),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    router.get('/', getAllPlaces);
    router.get('/<placeId>', getPlaceById);
    router.post('/', createPlace);
    router.put('/<placeId>', updatePlace);
    router.delete('/<placeId>', deletePlace);

    return router;
  }
}
