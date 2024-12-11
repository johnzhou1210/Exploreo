import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import '../api_calls/user_functions.dart';
import '../data/objects.dart';
import '../user_auth/userState.dart';
import '../widgets/TripListTile.dart';
import 'package:provider/provider.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});
  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  late List<Trip> userTrips;

  @override
  Future<void> initState() async {
    super.initState();
    userTrips = await getUserTrips(userId: Provider.of<UserState>(context).currentUser!.uid);
  }

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

                    userTrips.length.toString(),
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
                itemCount: userTrips.length,
                itemBuilder: (context, index) {


                  List<Trip> sortedTrips = [...userTrips];

                  sortedTrips.sort((a,b) => a.startDate.compareTo(b.startDate));

                  return TripListTile(
                    tripId: int.parse(sortedTrips[index].id),

                  );




                },
              ),
            )

          ],
        )),

    );
  }
}
