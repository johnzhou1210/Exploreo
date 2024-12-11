import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> addUserCall(
    {required User user, required String username, String? password}) async {
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
      endpoint:
          'https://exploreo-backend-1065179743612.us-central1.run.app/users',
      method: "GET",
    );

    if (response.statusCode == 200) {
      // Handle successful response
      print('Success: ${response.body}');
    } else {
      // Handle error response
      print('THERE WAS AN ERIOJSEFOI');
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
  }
}

Future<void> getUserTrips({required String userId}) async {
  try {
    // Construct the endpoint with the userId as a dynamic parameter
    final String endpoint = 'http://10.0.2.2:8080/users/$userId/trips';

    print('Fetching trips for userId: $userId'); // Debugging

    // Make the GET request
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    // Handle the response
    if (response.statusCode == 200) {
      final trips = jsonDecode(response.body); // Parse the response body
      print('User Trips: $trips');
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
  }
}
