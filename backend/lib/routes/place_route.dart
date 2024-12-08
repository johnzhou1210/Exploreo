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

    router.get('/', getAllPlaces);
    return router;
  }
}
