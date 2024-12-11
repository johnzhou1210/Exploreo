import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> verifyIdToken(String idToken, String apiKey) async {
  final url =
      'https://identitytoolkit.googleapis.com/v1/accounts:lookup?key=$apiKey';
  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'idToken': idToken}),
  );

  if (response.statusCode == 200) {
    final body = json.decode(response.body);
    print('User info: ${body['users']}');
    return true; // Token is valid
  } else {
    print('Failed to verify token: ${response.body}');
    return false; // Token is invalid
  }
}
