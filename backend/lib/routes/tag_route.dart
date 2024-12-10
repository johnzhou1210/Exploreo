import 'package:backend/prisma/generated_dart_client/prisma.dart';
import 'package:backend/prisma/generated_dart_client/model.dart';
import 'package:orm/orm.dart';
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

    Future<Response> getTagById(Request request, String tagId) async {
      try {
        final trip = await prisma.tag
            .findUnique(where: TagWhereUniqueInput(id: tagId));

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

    Future<Response> createTag(Request request) async {
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    Future<Response> updateTag(Request request, String tagId) async {
      return Response(400, body: 'INTERNAL_SERVER_ERROR');
    }

    Future<Response> deleteTag(Request request, String tagId) async {
      try {
        final trip = await prisma.tag
            .delete(where: TagWhereUniqueInput(id: tagId));

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

    router.get('/', getAllTags);
    router.get('/<tagId>', getTagById);
    router.post('/', createTag);
    router.put('/<tagId>', updateTag);
    router.delete('/<tagId>', deleteTag);

    return router;
  }
}
