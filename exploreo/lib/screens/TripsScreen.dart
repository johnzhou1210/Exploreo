import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import '../data/TestTripData.dart';
import '../widgets/TripListTile.dart';

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
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Trips',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Container(
              child: Column(
                children: [
                  const Text(
                    "Travel Trips",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Serif'
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    trips.length.toString(), // TODO: GET ALL TRIPS WITH SAME USER ID AND GET LENGTH OF THAT AND TURN INTO STRING
                    style: const TextStyle(
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
                itemCount: trips.length, // TODO: GET ALL TRIPS WITH SAME USER ID AND GET LENGTH OF THAT
                itemBuilder: (context, index) {

                  /* // TODO: GET ALL TRIPS OF SAME USER ID WITH GET REQUEST
                      THEN SORT BY DATE

                       return TripListTile(
                    tripId: trips[index]

                  );


                  * */



                },
              ),
            )

          ],
        )),

    );
  }
}
