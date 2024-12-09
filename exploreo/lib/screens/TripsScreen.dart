import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import '../data/TestTripData.dart';
import '../widgets/TripListTile.dart';

class Trip {
  // int id;
  String title;
  String date;
  String imageUrl;
  String description;

  List<TripEvent> events;

  Trip({
    // required this.id,
    required this.title,
    required this.date,
    this.imageUrl = "https://example.com/default-image.jpg",
    this.description = "",
    required this.events,
});
}

class TripEvent {
  // int id;
  String title;
  String date;
  String description;

  TripEvent({
    // required this.id,
    required this.title,
    required this.date,
    this.description = "",
  });
}



class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});
  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(height: 40),
            Row(

              children: [
                SizedBox(width: 15),
                Material(
                  child: Ink(
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                      color: Color.fromARGB(50, 200, 200, 200),
                    ),
                    child :IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen())); // Whatever page it will go back to
                      },
                      iconSize: 16,
                      icon: Icon(Icons.arrow_back_ios_new_rounded),

                    ),
                  ),
                ),
                SizedBox(width: 40),
                const Text(
                  'Trips',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                ),
              ],
            ),

            SizedBox(height: 15),

            Container(
              child: Column(
                children: [
                  Text(
                    "Travel Trips",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Serif'
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    trips.length.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 30, 100, 255),
                    ),
                  ),
                ],
              ),
            ),


            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: trips.length,
                itemBuilder: (context, index) {
                  return TripListTile(
                    trip: trips[index]

                  );
                },
              ),
            )

          ],
        )),

    );
  }
}
