import 'package:exploreo/api_calls/trip_functions.dart';
import 'package:exploreo/api_calls/user_functions.dart';
import 'package:exploreo/screens/AddEventsScreen.dart';
import 'package:exploreo/screens/HomeScreen.dart';
import 'package:exploreo/user_auth/userState.dart';
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
import 'package:provider/provider.dart';

class TripInfoScreen extends StatefulWidget {
  final String tripId;

  const TripInfoScreen({
    super.key,
    required this.tripId,
  });

  @override
  State<TripInfoScreen> createState() => _TripInfoScreenState();
}

class _TripInfoScreenState extends State<TripInfoScreen> {
  Trip? trip;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fetchTripWithPlaces();
  }

  Future<void> fetchTripWithPlaces() async {
    try {
      final userState = Provider.of<UserState>(context, listen: false);

      if (userState.currentUser == null || userState.userId == null) {
        // If not logged in, show the LoginScreen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
        return;
      }
      Trip? response = await getTripById(widget.tripId);
      if (response != null) {
        setState(() {
          trip = response;
        });
      } else {
        print("Error fetching trip");
      }
    } catch (e) {
      print("There was an error fetching trips");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Background image

        if (trip != null) ...[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: trip!.imageUrl != null
                    ? NetworkImage(trip!.imageUrl!)
                    : const AssetImage("assets/images/placeholder.jpeg"),
                fit: BoxFit.cover, // Options: cover, contain, fill, etc.
              ),
            ),
          ),
        ],

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
                                          const HomeScreen(entryIndex: 1)),
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
                                if (trip != null) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          EditTripScreen(trip: trip!)));
                                }
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
                            'Your trip to ${trip?.tripName ?? ""}',
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


                if (trip != null && trip!.places.isNotEmpty) ...[
                  Flexible(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: trip?.places.length,
                      itemBuilder: (context, index) {
                        List<Place> sortedEvents = [...?trip?.places];
                        sortedEvents.sort((a, b) {
                          DateTime dateA = DateTime.tryParse(a.startDate ?? '') ?? DateTime.now();
                          DateTime dateB = DateTime.tryParse(b.startDate ?? '') ?? DateTime.now();
                          return dateA.compareTo(dateB);
                        });

                        Place currPlace = sortedEvents[index];
                        DateTime tripStart =  DateTime.tryParse(currPlace.startDate ?? '') ?? DateTime.now();
                        DateTime tripEnd = DateTime.tryParse(currPlace.endDate ?? '') ?? DateTime.now();

                        String eventId = sortedEvents[index].id ?? '';

                        return EventTile(
                          place: sortedEvents[index],
                          minDate: DateTime.parse(trip!.startDate),
                          maxDate: DateTime.parse(trip!.endDate),
                          imageUrl: trip?.imageUrl ?? '',


                        );

                      },
                    ),
                  ),
                ]

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
              if (trip != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddEventsScreen(tripId: trip!.id, minDate: trip!.startDate, maxDate: trip!.endDate, imageUrl: trip!.imageUrl ?? '', tripName: trip!.tripName)),
                );
              }
            }),
      ),
    );
  }
}
