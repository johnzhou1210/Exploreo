import 'package:exploreo/api_calls/utils.dart';

Future<void> addPlaceCall({
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
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
  }
}
