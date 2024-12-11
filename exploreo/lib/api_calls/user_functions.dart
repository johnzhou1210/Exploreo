import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exploreo/data/TestTripData.dart';

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

Future<List<TripObject>> getUserTrips({required String userId}) async {
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
      final tripsJson =
      jsonDecode(response.body) as List<dynamic>; // Parse the response body
      print('User Trips: $tripsJson');

      // Convert JSON data to a list of `TripObject`
      return tripsJson.map((trip) => TripObject.fromJson(trip)).toList();
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch trips: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}

// Get all places with same trip id
Future<List<PlaceObject>> getTripPlaces({required String tripId}) async {
  try {
    // Construct the endpoint with the userId as a dynamic parameter
    final String endpoint = 'http://10.0.2.2:8080/trips/$tripId/places';

    print('Fetching places for tripId: $tripId'); // Debugging

    // Make the GET request
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    // Handle the response
    if (response.statusCode == 200) {
      final placesJson =
      jsonDecode(response.body) as List<dynamic>; // Parse the response body
      print('Trip Places: $placesJson');

      // Convert JSON data to a list of `PlaceObject`
      return placesJson.map((trip) => PlaceObject.fromJson(trip)).toList();
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch places: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}