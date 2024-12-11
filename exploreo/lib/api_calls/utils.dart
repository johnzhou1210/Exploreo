import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:exploreo/user_auth/getToken.dart';

Future<http.Response> makeAuthenticatedRequest(
    {required String endpoint,
    required String method,
    Map<String, String>? headers,
    Map<String, dynamic>? body}) async {
  String? idToken = await getIdToken();

  if (idToken == null) {
    throw Exception('User not authenticated');
  }

  final Map<String, String> defaultHeaders = {
    'Authorization': 'Bearer $idToken',
    'Content-Type': 'application/json',
  };

  final Map<String, String> mergedHeaders = {
    ...defaultHeaders,
    if (headers != null) ...headers,
  };

  Uri uri = Uri.parse(endpoint);
  switch (method) {
    case 'POST':
      return await http.post(uri,
          headers: mergedHeaders, body: jsonEncode(body));
    case 'PUT':
      return await http.put(uri,
          headers: mergedHeaders, body: jsonEncode(body));
    case 'DELETE':
      return await http.delete(uri, headers: mergedHeaders);
    case 'GET':
    default:
      return await http.get(uri, headers: mergedHeaders);
  }
}
