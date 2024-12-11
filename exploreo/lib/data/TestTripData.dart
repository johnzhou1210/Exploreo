import '../screens/TripsScreen.dart';

class TripObject {
  final String id;
  final String tripName;
  final String startDate;
  final String endDate;
  final String? description;
  final bool? isShared;
  final String? imageUrl;
  final String? notes;
  final List<dynamic> usersOnTrips;

  TripObject({
    required this.id,
    required this.tripName,
    required this.startDate,
    required this.endDate,
    this.description,
    this.isShared,
    this.imageUrl,
    this.notes,
    required this.usersOnTrips,
  });

  factory TripObject.fromJson(Map<String, dynamic> json) {
    return TripObject(
      id: json['id'],
      tripName: json['tripName'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      description: json['description'],
      isShared: json['isShared'] == null ? null : json['isShared'] as bool,
      imageUrl: json['imageUrl'],
      notes: json['notes'],
      usersOnTrips: json['UsersOnTrips'] ?? [],
    );
  }
}

class PlaceObject {
  final String id;
  final String placeName;
  final String? description;
  final String? startDate;
  final String? endDate;
  final String? notes;

  PlaceObject({
    required this.id,
    required this.placeName,
    this.description,
    this.startDate,
    this.endDate,
    this.notes,
  });

  factory PlaceObject.fromJson(Map<String, dynamic> json) {
    return PlaceObject(
      id: json['id'],
      placeName: json['placeName'],
      description: json['description'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      notes: json['notes'],
    );
  }
}
