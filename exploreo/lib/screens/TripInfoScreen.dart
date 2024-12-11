import 'package:exploreo/api_calls/trip_functions.dart';
import 'package:exploreo/api_calls/user_functions.dart';
import 'package:exploreo/screens/AddEventsScreen.dart';
import 'package:exploreo/screens/HomeScreen.dart';
import 'package:exploreo/util/TimeRangeFormatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import '../data/objects.dart';
import '../widgets/EventTile.dart';
import '../widgets/TripListTile.dart';
import 'EditTripScreen.dart';
import 'TripsScreen.dart';

class TripInfoScreen extends StatefulWidget {
  final int tripId;

  const TripInfoScreen({
    super.key,
    required this.tripId,
  });

  @override
  State<TripInfoScreen> createState() => _TripInfoScreenState();
}

class _TripInfoScreenState extends State<TripInfoScreen> {

  late Trip trip;
  List<Place> places = [];

  @override
  void initState() async {
    super.initState();
    trip = (await getTripById(widget.tripId.toString()))!;
    places = await getTripPlaces(tripId: widget.tripId.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Background image
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(trip.imageUrl ??
                  'https://example.com/default-image.jpg'),
              // Use your image URL here
              fit: BoxFit.cover, // Options: cover, contain, fill, etc.
            ),
          ),
        ),

        // Tint overlay
        Container(
          color: Colors.white.withOpacity(.75),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),

        // Page content
        Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Top bar
                const SizedBox(height: 40),

                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Ink(
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color.fromARGB(50, 200, 200, 200),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen(entryIndex: 1)),
                                  (Route<dynamic> route) =>
                                      false, // Keeps only the home route
                                );
                              },
                              iconSize: 16,
                              icon:
                                  const Icon(Icons.arrow_back_ios_new_rounded),
                            ),
                          ),
                        ),
                        const SizedBox(width: 290),
                        Material(
                          color: Colors.transparent,
                          child: Ink(
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color.fromARGB(50, 200, 200, 200),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EditTripScreen(tripId: widget.tripId)));
                              },
                              iconSize: 24,
                              icon: const Icon(Icons.edit),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            'Your trip to ${trip.tripName}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20, fontFamily: 'Roboto'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Events list for this trip
                //　GET ALL PLACES, FILTER BY USER ID

                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: places.length,
                    itemBuilder: (context, index) {

                     List<Place> sortedEvents = [...places];
                     sortedEvents.sort((a,b) =>  DateTime.parse(a.startDate ?? '').compareTo(DateTime.parse(b.startDate ?? '')));

                     DateTime tripStart = DateTime.parse(trip.startDate);
                     DateTime tripEnd = DateTime.parse(trip.endDate);

                      return EventTile(tripStart: tripStart, tripEnd:  tripEnd, imageUrl: trip.imageUrl ?? 'https://example.com/default-image.jpg', eventId: int.parse(sortedEvents[index].id), tripName: trip.tripName);
                    },
                  ),
                ),
              ]),
        ),
      ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
            backgroundColor: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  32), // Make it rounded but not fully circular
            ),
            child: const Icon(
              Icons.add,
              size: 32,
            ),
            onPressed: () {
              // Go to add event screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddEventsScreen(tripId: widget.tripId)),
              );
            }),
      ),
    );
  }
}
