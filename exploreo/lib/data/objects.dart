class Trip {
  final String id;
  final String tripName;
  final String startDate;
  final String endDate;
  final String? description;
  final bool? isShared;
  final String? imageUrl;
  final String? notes;
  final List<dynamic> usersOnTrips;
  final List<Place> places;

  Trip({
    required this.id,
    required this.tripName,
    required this.startDate,
    required this.endDate,
    this.description,
    this.isShared,
    this.imageUrl,
    this.notes,
    required this.usersOnTrips,
    required this.places,
  });

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      id: json['id'],
      tripName: json['tripName'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      description: json['description'],
      isShared: json['isShared'] == null ? null : json['isShared'] as bool,
      imageUrl: json['imageUrl'],
      notes: json['notes'],
      usersOnTrips: json['UsersOnTrips'] ?? [],
      places:
          json['places']?.map<Place>((place) => Place.fromJson(place)).toList() ?? [],
    );
  }
}

class Place {
  final String id;
  final String placeName;
  final String? description;
  final String? startDate;
  final String? endDate;
  final String? notes;
  final String tripId;

  Place({
    required this.id,
    required this.placeName,
    this.description,
    this.startDate,
    this.endDate,
    this.notes,
    required this.tripId,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      placeName: json['placeName'],
      description: json['description'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      notes: json['notes'],
      tripId: json['tripId'],
    );
  }
}
