import 'dart:convert';

import 'package:exploreo/api_calls/utils.dart';

import '../data/TestTripData.dart';

Future<PlaceObject?> addPlaceCall({
  required String placeName,
  required String tripId,
  DateTime? startDate,
  DateTime? endDate,
  String? description,
  String? notes,
}) async {
  try {
    // Construct the request body
    Map<String, dynamic> placeBody = {
      'placeName': placeName,
      'tripId': tripId,
      if (startDate != null) 'startDate': startDate.toIso8601String(),
      if (endDate != null) 'endDate': endDate.toIso8601String(),
      if (description != null) 'description': description,
      if (notes != null) 'notes': notes,
    };

    print('Request Body: $placeBody'); // Debugging

    // Make the POST request to the backend
    final response = await makeAuthenticatedRequest(
      endpoint: 'http://10.0.2.2:8080/places',
      method: "POST",
      body: placeBody,
    );

    // Handle response
    if (response.statusCode == 200) {
      print('Success: ${response.body}');
      final responseData = jsonDecode(response.body);
      return PlaceObject.fromJson(responseData);
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
    return null;
  }
  return null;
}

Future<PlaceObject?> updatePlaceCall({
  required String placeId,
  String? placeName,
  String? description,
  DateTime? startDate,
  DateTime? endDate,
  String? notes,
}) async {
  try {
    // Construct the request body with only updatable fields
    Map<String, dynamic> placeBody = {
      if (placeName != null) 'placeName': placeName,
      if (description != null) 'description': description,
      if (startDate != null) 'startDate': startDate.toIso8601String(),
      if (endDate != null) 'endDate': endDate.toIso8601String(),
      if (notes != null) 'notes': notes,
    };

    print('Updating Place: $placeBody');

    final String endpoint = 'http://10.0.2.2:8080/places/$placeId';

    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "PUT",
      body: placeBody,
    );

    // Handle the response
    if (response.statusCode == 200) {
      final updatedPlaceJson = jsonDecode(response.body);
      print('Place Updated Successfully: $updatedPlaceJson');
      return PlaceObject.fromJson(updatedPlaceJson);
    } else if (response.statusCode == 404) {
      print('Error: Place not found');
      return null;
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return null;
    }
  } catch (error) {
    print('Error making PATCH request: $error');
    return null; // Return null on exception
  }
}

Future<PlaceObject?> getPlaceByIdCall(String placeId) async {
  try {
    // Construct the endpoint URL
    final String endpoint = 'http://10.0.2.2:8080/places/$placeId';

    // Make the GET request to the backend
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    // Handle the response
    if (response.statusCode == 200) {
      print('Place Retrieved Successfully: ${response.body}');
      final responseData = jsonDecode(response.body);
      return PlaceObject.fromJson(responseData);
    } else if (response.statusCode == 404) {
      print('Error: Place not found');
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