import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../data/TestTripData.dart';

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
        endpoint: 'http://10.0.2.2:8080/users/createUser',
        method: "POST",
        body: userbody);

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

// GET /trips: Gets all trips in database
Future< List<Trip>> getTripsCall() async {
  try {
    final response = await makeAuthenticatedRequest(endpoint: 'http://10.0.2.2:8080/trips', method: "GET");
    
    if (response.statusCode == 200) {
      print('Success: ${response.body}');
      final List<Trip> jsonData = json.decode(response.body);
      return jsonData.map((json)=>)
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
    
  } catch (error) {
    print('Error making GET request: $error');
  }
}