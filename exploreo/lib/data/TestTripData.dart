import '../screens/TripsScreen.dart';
class Trip {
  static int _idCounter = 0;
  final int id ;
  String title;
  String date;
  String imageUrl;
  String description;

  List<TripEvent> events;

  Trip({
    required this.title,
    required this.date,
    this.imageUrl = "https://example.com/default-image.jpg",
    this.description = "",
    required this.events,
  }) : id = ++_idCounter ;
}

class TripEvent {
  static int _idCounter = 0;
  final int id;
  String title;
  String date;
  String description;

  TripEvent({
    // required this.id,
    required this.title,
    required this.date,
    this.description = "",
  }) : id = ++_idCounter;
}

List<Trip> trips = [

];


