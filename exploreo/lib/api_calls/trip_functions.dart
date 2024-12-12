import 'dart:convert';

import 'package:exploreo/api_calls/utils.dart';
import 'package:exploreo/data/objects.dart';
import 'package:exploreo/util/config.dart';

Future<Trip?> addTripCall({
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
    Map<String, dynamic> tripBody = {
      'userId': userId,
      'tripName': tripName,
      'startDate': '${startDate.toIso8601String().substring(0, 19)}Z',
      'endDate': '${endDate.toIso8601String().substring(0, 19)}Z',
      if (description != null) 'description': description,
      if (isShared != null) 'isShared': isShared,
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (notes != null) 'notes': notes,
    };

    print('Request Body: $tripBody');

    final response = await makeAuthenticatedRequest(
      endpoint: '${Config.apiUrl}/trips',
      method: "POST",
      body: tripBody,
    );

    if (response.statusCode == 200) {
      print('Trip Created Successfully: ${response.body}');
      final responseData = jsonDecode(response.body);
      return Trip.fromJson(responseData);
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return null;
    }
  } catch (error) {
    print('Error making POST request: $error');
    return null;
  }
}

Future<Trip?> updateTripCall({
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
      if (startDate != null) 'startDate': '${startDate.toIso8601String().substring(0, 19)}Z',
      if (endDate != null) 'endDate': '${endDate.toIso8601String().substring(0, 19)}Z',
      if (isShared != null) 'isShared': isShared.toString(),
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (notes != null) 'notes': notes,
    };

    print('Updating Trip: $tripBody');

    final String endpoint = '${Config.apiUrl}/trips/$tripId';

    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "PUT",
      body: tripBody,
    );

    if (response.statusCode == 200) {
      final updatedTripJson = jsonDecode(response.body);
      print('Trip Updated Successfully: $updatedTripJson');
      return Trip.fromJson(updatedTripJson);
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

Future<Trip?> getTripById(String tripId) async {
  try {
    final String endpoint = '${Config.apiUrl}/trips/$tripId';

    // Make the GET request to retrieve the trip
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "GET",
    );

    if (response.statusCode == 200) {
      final tripJson = jsonDecode(response.body);
      print('Trip Retrieved Successfully: $tripJson');
      return Trip.fromJson(tripJson);
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

Future<bool> deleteTripCall(String tripId) async {
  try {
    final String endpoint = '${Config.apiUrl}/trips/$tripId';

    print('Deleting Trip with ID: $tripId');

    // Make the DELETE request to remove the trip
    final response = await makeAuthenticatedRequest(
      endpoint: endpoint,
      method: "DELETE",
    );

    if (response.statusCode == 200) {
      print('Trip Deleted Successfully');
      return true; // Return true on successful deletion
    } else if (response.statusCode == 404) {
      print('Error: Trip not found');
      return false; // Return false if the trip was not found
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
      return false; // Return false for any other errors
    }
  } catch (error) {
    print('Error making DELETE request: $error');
    return false; // Return false on exception
  }
}
