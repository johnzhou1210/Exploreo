import 'dart:convert';
import 'package:exploreo/api_calls/utils.dart';
import 'package:exploreo/util/config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exploreo/data/objects.dart';

/// Sends email login user information to the PostgreSQL backend.
Future<void> addUserCall({
  required User user,
  required String username,
  String? password,
}) async {
  try {
    Map<String, dynamic> userBody = {
      'email': user.email,
      'username': username,
      'firebaseUid': user.uid,
      'providerId': user.providerData[0].providerId,
      'loginType': 'EMAIL',
      if (password != null) 'password': password
    };
    final response = await makeAuthenticatedRequest(
      endpoint: '${Config.apiUrl}/users',
      method: "POST",
      body: userBody,
    );

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
    Map<String, dynamic> userBody = {
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
      endpoint: '${Config.apiUrl}/users',
      method: "POST",
      body: userBody,
    );

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

/// Sends Twitter login user information to the PostgreSQL backend.
Future<void> addGoogleUserCall({
  required User user,
  required String username,
}) async {
  try {
    Map<String, dynamic> userBody = {
      'email': user.email ?? '', // Twitter may not provide email
      'username': username,
      'firebaseUid': user.uid,
      'providerId': user.providerData.isNotEmpty
          ? user.providerData[0].providerId
          : 'google.com', // Default to 'twitter.com' if providerData is empty
      'loginType': 'GOOGLE',
      // 'password' is omitted for Twitter login
    };
    final response = await makeAuthenticatedRequest(
      endpoint: '${Config.apiUrl}/users',
      method: "POST",
      body: userBody,
    );

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

Future<List<Trip>> getUserTrips({required String userId}) async {
  try {
    // Construct the endpoint with the userId as a dynamic parameter
    final String endpoint = '${Config.apiUrl}/users/$userId/trips';

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
      return tripsJson.map((trip) => Trip.fromJson(trip)).toList();
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch trips: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}

Future<List<Trip>> getUserTripsByFirebaseUid(
    {required String firebaseUid}) async {
  try {
    // Construct the endpoint with the userId as a dynamic parameter
    final String endpoint =
        '${Config.apiUrl}/users/firebase/$firebaseUid/trips';

    print('Fetching trips for firebaseUid: $firebaseUid'); // Debugging

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
      return tripsJson.map((trip) => Trip.fromJson(trip)).toList();
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch trips: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}

Future<String> getUserId({required String firebaseUid}) async {
  try {
    final String endpoint = '${Config.apiUrl}/users/firebase/$firebaseUid';
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    if (response.statusCode == 200) {
      final userJson = jsonDecode(response.body);
      return userJson['id'];
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch user: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}

// Get all places with same trip id
Future<List<Place>> getTripPlaces({required String tripId}) async {
  try {
    // Construct the endpoint with the userId as a dynamic parameter
    final String endpoint = '${Config.apiUrl}/trips/$tripId/places';

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
      return placesJson.map((trip) => Place.fromJson(trip)).toList();
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      throw Exception('Failed to fetch places: ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making GET request: $error');
    throw Exception('Error making GET request: $error');
  }
}
