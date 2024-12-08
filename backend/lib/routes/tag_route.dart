import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";
import 'package:backend/prisma.dart';
import 'dart:convert';

class TagRoute {
  final prisma = PrismaSingleton.client;

  Router get router {
    final router = Router();

    Future<Response> getAllTags(Request request) async {
      try {
        var tags = await prisma.tag.findMany();
        var tagList = tags.map((tag) => tag.toJson()).toList();

        return Response.ok(
          json.encode(tagList),
          headers: {'Content-Type': 'application/json'},
        );
      } catch (e) {
        print(e);
        return Response(400, body: 'INTERNAL_SERVER_ERROR');
      }
    }

    router.get('/', getAllTags);
    return router;
  }
}
