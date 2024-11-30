import "package:shelf/shelf.dart";
import "package:shelf_router/shelf_router.dart";

class UserApi {
  Router get router {
    final router = Router();

    router.get('/', (Request request) {
      return Response.ok('Hello from user api');
    });
    
    return router;
  }
}
