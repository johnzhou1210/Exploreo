import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Sends email login user information to the PostgreSQL backend.
Future<void> addUserCall({
  required User user,
  required String username,
  String? password,
}) async {
  try {
    Map<String, dynamic> userbody = {
      'email': user.email,
      'username': username,
      'firebaseUid': user.uid,
      'providerId': user.providerData[0].providerId,
      'loginType': 'EMAIL',
      if (password != null) 'password': password
    };
    final response = await makeAuthenticatedRequest(
        endpoint: 'http://10.0.2.2:8080/users/createUser',
        method: "POST",
        body: userbody);

    if (response.statusCode == 200) {
      // Handle successful response
      print('Success: ${response.body}');
    } else {
      // Handle error response
      print('THERE WAS AN ERROR');
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
  }
}

/// Sends Twitter login user information to the PostgreSQL backend.
Future<void> addTwitterUserCall({
  required User user,
  required String username,
}) async {
  try {
    Map<String, dynamic> userbody = {
      'email': user.email ?? '', // Twitter may not provide email
      'username': username,
      'firebaseUid': user.uid,
      'providerId': user.providerData.isNotEmpty
          ? user.providerData[0].providerId
          : 'twitter.com', // Default to 'twitter.com' if providerData is empty
      'loginType': 'TWITTER',
      // 'password' is omitted for Twitter login
    };
    final response = await makeAuthenticatedRequest(
        endpoint: 'http://10.0.2.2:8080/users/createUser',
        method: "POST",
        body: userbody);

    if (response.statusCode == 200 || response.statusCode == 201) {
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

