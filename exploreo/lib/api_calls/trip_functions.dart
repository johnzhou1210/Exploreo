import 'package:exploreo/api_calls/utils.dart';

Future<void> addTripCall({
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

    // Handle the response
    if (response.statusCode == 200) {
      print('Trip Created Successfully: ${response.body}');
    } else {
      print('Error: ${response.statusCode}, ${response.reasonPhrase}');
    }
  } catch (error) {
    print('Error making POST request: $error');
  }
}
