import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
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

    router.get('/', getAllTrips);
    return router;
  }
}
