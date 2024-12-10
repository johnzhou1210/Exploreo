import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import '../data/TestTripData.dart';
import '../widgets/EventTile.dart';
import '../widgets/TripListTile.dart';
import 'EditTripScreen.dart';
import 'TripsScreen.dart';

class TripInfoScreen extends StatefulWidget {
  final Trip trip;

  const TripInfoScreen({
    super.key,
    required this.trip,
  });

  @override
  State<TripInfoScreen> createState() => _TripInfoScreenState();
}

class _TripInfoScreenState extends State<TripInfoScreen> {
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
            image: NetworkImage(widget.trip.imageUrl ??
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
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
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
                                  builder: (context) => EditTripScreen(
                                      trip: widget
                                          .trip // change to EditTripScreen
                                      )));
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
                          'Your trip to ${widget.trip.title}',
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


              Flexible(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: trips.firstWhere((trip) => trip.id == widget.trip.id).events.length,
                  itemBuilder: (context, index) {
                    return EventTile(
                        event: widget.trip.events[index]

                    );
                  },
                ),
              )
              
              
              

            ]),
      ),
    ]));
  }
}
