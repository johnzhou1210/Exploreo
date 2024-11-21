import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';

import '../widgets/TripListTile.dart';

class Trip {
  // int id;
  String title;
  String date;
  String imagePath;

  Trip({
    // required this.id,
    required this.title,
    required this.date,
    this.imagePath = "assets/images/placeholder2.jpeg"
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
    List<Trip> trips = [
      Trip(title: "Vacation Island", date: "Nov 13 - Dec 13", imagePath: "assets/images/placeholder.jpeg"),
      Trip(title: "Riverside Attraction", date: "Dec 19 2024 - Jan 4 2025", imagePath: "assets/images/placeholder2.jpeg"), // if year not same, indicate year?
      Trip(title: "Tropical Resort", date: "Apr 4 - May 5", imagePath: "assets/images/placeholder3.jpeg"),
      Trip(title: "Mountain Kayaking Adventure", date: "Jun 1 - Jun 6", imagePath: "assets/images/placeholder4.jpeg"),
      Trip(title: "Seaside Exhibit", date: "Sep 11 - Oct 1", imagePath: "assets/images/placeholder5.jpeg"),
      Trip(title: "Summer Pier", date: "Jul 6 - Jul 12", imagePath: "assets/images/placeholder6.jpeg"),
      Trip(title: "Ancient Building", date: "Mar 2 - Mar 3", imagePath: "assets/images/placeholder7.jpeg"),
      Trip(title: "Mountain Village", date: "Jun 17 - Jun 22", imagePath: "assets/images/placeholder8.jpeg"),
      Trip(title: "River Delta Town", date: "Aug 2 2025 - Aug 31 2025", imagePath: "assets/images/placeholder9.jpeg"),
      Trip(title: "Sandy Cliffs", date: "Oct 2 - Oct 16", imagePath: "assets/images/placeholder10.jpeg"),

    ];

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
