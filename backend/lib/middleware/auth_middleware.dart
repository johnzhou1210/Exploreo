import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';

Middleware authMiddleware(String apiKey) {
  return (Handler handler) {
    return (Request request) async {
      final authHeader = request.headers['Authorization'];

      if (authHeader == null || !authHeader.startsWith('Bearer ')) {
        return Response.forbidden('Missing or invalid Authorization header');
      }

      final idToken = authHeader.substring(7); // Strip "Bearer "

      // Verify the ID token using Firebase REST API
      if (await verifyIdToken(idToken, apiKey)) {
        print("TOKEN WAS VERIFIED");
        return handler(request); // Proceed if valid
      } else {
        print("TOKEN WAS REJECTED");
        return Response.forbidden('Invalid or expired token');
      }
    };
  };
}

Future<bool> verifyIdToken(String idToken, String apiKey) async {
  final url =
      'https://identitytoolkit.googleapis.com/v1/accounts:lookup?key=$apiKey';
  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'idToken': idToken}),
  );

  return response.statusCode == 200; // Return true if valid
}
