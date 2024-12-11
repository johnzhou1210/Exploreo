import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> addUserCall({required User user, required String username}) async {
  try {
    Map<String, dynamic> userbody = {
      'email': user.email,
      'username': username,
      'uid': user.uid
    };
    final response = await makeAuthenticatedRequest(
        endpoint: 'http://10.0.2.2:8080/users/createUser',
        method: "post",
        body: userbody);

    if (response.statusCode == 200) {
      // Handle successful response
      print('Success: ${response.body}');
    } else {
      // Handle error response
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
  }
}
