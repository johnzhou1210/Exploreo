import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
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
        final parsedId = int.tryParse(placeId);
        final trip = await prisma.place
            .findUnique(where: PlaceWhereUniqueInput(id: parsedId));

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
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    Future<Response> updatePlace(Request request, String placeId) async {
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    Future<Response> deletePlace(Request request, String placeId) async {
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    router.get('/', getAllPlaces);
    router.get('/<placeId>', getPlaceById);
    router.post('/', createPlace);
    router.put('/<placeId>', updatePlace);
    router.delete('/<placeId>', deletePlace);

    return router;
  }
}
