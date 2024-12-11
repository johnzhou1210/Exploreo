import 'dart:convert';

import 'package:exploreo/api_calls/utils.dart';
import 'package:exploreo/data/TestTripData.dart';

import 'dart:convert';

import 'package:exploreo/api_calls/utils.dart';
import 'package:exploreo/data/TestTripData.dart';
Future<TripObject?> addTripCall({
  required String userId,
  required String tripName,
  required DateTime startDate,
  required DateTime endDate,
  String? description,
  bool? isShared,
  String? imageUrl,
  String? notes,
}) async {
  try {
    // Construct the request body
    Map<String, dynamic> tripBody = {
      'userId': userId,
      'tripName': tripName,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      if (description != null) 'description': description,
      if (isShared != null) 'isShared': isShared.toString(),
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (notes != null) 'notes': notes,
    };

    print('Request Body: $tripBody'); // Debugging

    // Make the POST request to the backend
    final response = await makeAuthenticatedRequest(
      endpoint: 'http://10.0.2.2:8080/trips',
      method: "POST",
      body: tripBody,
    );

    if (response.statusCode == 200) {
      print('Trip Created Successfully: ${response.body}');
      final responseData = jsonDecode(response.body);
      return TripObject.fromJson(
          responseData); // Parse the response and return as TripObject
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return null; // Return null on error
    }
  } catch (error) {
    print('Error making POST request: $error');
    return null; // Return null on exception
  }
}


Future<TripObject?> updateTripCall({
  required String tripId,
  String? tripName,
  String? description,
  DateTime? startDate,
  DateTime? endDate,
  bool? isShared,
  String? imageUrl,
  String? notes,
}) async {
  try {
    Map<String, dynamic> tripBody = {
      if (tripName != null) 'tripName': tripName,
      if (description != null) 'description': description,
      if (startDate != null) 'startDate': startDate.toIso8601String(),
      if (endDate != null) 'endDate': endDate.toIso8601String(),
      if (isShared != null) 'isShared': isShared.toString(),
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (notes != null) 'notes': notes,
    };

    print('Updating Trip: $tripBody');

    final String endpoint = 'http://10.0.2.2:8080/trips/$tripId';

    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "PUT",
      body: tripBody,
    );

    if (response.statusCode == 200) {
      final updatedTripJson = jsonDecode(response.body);
      print('Trip Updated Successfully: $updatedTripJson');
      return TripObject.fromJson(updatedTripJson);
    } else if (response.statusCode == 404) {
      print('Error: Trip not found');
      return null;
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return null;
    }
  } catch (error) {
    print('Error making PATCH request: $error');
    return null;
  }
}


Future<TripObject?> getTripById(String tripId) async {
  try {
    final String endpoint = 'http://10.0.2.2:8080/trips/$tripId';

    // Make the GET request to retrieve the trip
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    if (response.statusCode == 200) {
      final tripJson = jsonDecode(response.body);
      print('Trip Retrieved Successfully: $tripJson');
      return TripObject.fromJson(tripJson);
    } else if (response.statusCode == 404) {
      print('Error: Trip not found');
      return null;
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return null;
    }
  } catch (error) {
    print('Error making GET request: $error');
    return null; // Return null on exception
  }
}

