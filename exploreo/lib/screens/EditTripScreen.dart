import 'dart:io';

import 'package:exploreo/data/objects.dart';
import 'package:exploreo/screens/AddEventsScreen.dart';
import 'package:exploreo/screens/HomeScreen.dart';
import 'package:exploreo/screens/TripInfoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../util/ImageFetcher.dart';
import '../util/TimeRangeFormatter.dart';
import '../widgets/TripListTile.dart';
import 'TripsScreen.dart';

class EditTripScreen extends StatefulWidget {
  final int tripId;

  EditTripScreen({
    super.key,
    required this.tripId,
  });

  @override
  State<EditTripScreen> createState() => _EditTripScreenState();
}

class _EditTripScreenState extends State<EditTripScreen> {
  DateTimeRange? selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  final TextEditingController tripNameController = TextEditingController();
  final TextEditingController tripNotesController = TextEditingController();
  String? _imageUrl;
  bool _isLoading = false;


  @override
  void initState() {
    super.initState();

    /* // TODO:  GET TRIP OBJECT WITH TRIP GET REQUEST AND TRIP ID
    * INIT DEFAULT VALUES WITH TRIP OBJECT CONTENT
    *

    tripNameController.text = widget.trip.title;
    tripNotesController.text = widget.trip.description;
    events = widget.trip.events;
    _imageUrl = widget.trip.imageUrl;
    selectedDates = ParseDateRange(widget.trip.date);


     */
  }


  Future<void> _searchImage(String query) async {
    setState(() {
      _isLoading = true;
    });

    try {
      final imageUrl = await FetchImage(query);
      setState(() {
        _imageUrl = imageUrl;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }

  }

  void _onContinuePressed() async {
    {
      String tripName = tripNameController.text.isEmpty
          ? 'Untitled'
          : tripNameController.text;
      await _searchImage(tripNameController.text);


      // UPDATE TRIP
      /* // TODO: TRIP PUT REQUEST TO UPDATE CURRENT TRIP BY ID
      *
      *
      Trip foundTrip = trips.firstWhere((item) => item.id == widget.trip.id);
      foundTrip.title =
      tripNameController.text.isEmpty ? 'Untitled' : tripNameController.text;
      foundTrip.date = FormatDateRange(selectedDates!);
      foundTrip.imageUrl = _imageUrl ?? 'https://example.com/default-image.jpg';
      foundTrip.description = tripNotesController.text;

      */

      Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context) => TripInfoScreen(tripId: widget.tripId)),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              // Header and back button
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Material(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color.fromARGB(50, 200, 200, 200),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Whatever page it will go back to
                        },
                        iconSize: 16,
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                  const SizedBox(width: 110),
                  const Text(
                    'Edit trip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                ),
                Flexible(
                    flex: 5,
                    child: Text(
                      "Make changes to your trip",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                ),
              ]),
              const SizedBox(height: 40),

              // Input fields
              Column(
                children: [
                  // Where to field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(flex: 1, child: SizedBox()),
                      Flexible(
                          flex: 10,
                          child: TextField(
                            controller: tripNameController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.location_on_outlined),
                              border: OutlineInputBorder(),
                              hintText: 'e.g. Paris, Hawaii, Tokyo',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          )),
                      const Flexible(flex: 1, child: SizedBox()),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Dates field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(flex: 1, child: SizedBox()),
                      Flexible(
                          flex: 10,
                          child: TextField(
                            readOnly: true,
                            onTap: () async {
                              final DateTimeRange? dateTimeRange =
                                  await showDateRangePicker(
                                      context: context,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100));
                              if (dateTimeRange != null) {
                                setState(() {
                                  selectedDates = dateTimeRange;
                                });
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: const Icon(CupertinoIcons.calendar_today),
                              border: const OutlineInputBorder(),
                              hintText: FormatDateRange(selectedDates!),
                            ),
                          )),
                      const Flexible(flex: 1, child: SizedBox()),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Description field
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(flex: 1, child: SizedBox()),
                  Flexible(
                      flex: 10,
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: TextField(
                          controller: tripNotesController,
                          minLines: 5,
                          maxLines: null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.description_outlined),
                            border: OutlineInputBorder(),
                            hintText: 'Add some notes or a description',
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                        ),
                      )),
                  const Flexible(flex: 1, child: SizedBox()),
                ],
              ),

              const SizedBox(height: 200),


              // Delete Trip Button
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Flexible(flex: 1, child: SizedBox()),
                SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Remove trip from trips
                        /* // TODO
                          // TRIPS DELETE REQUEST TO DELETE TRIP BY ID

                          int indexToRemove = trips.indexWhere((trip) => trip.id == widget.trip.id);
                          trips.removeAt(indexToRemove);


                        * */

                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomeScreen(entryIndex: 1)),
                              (Route<dynamic> route) =>
                          false, // Keeps only the home route
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Delete Trip",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                const Flexible(flex: 1, child: SizedBox()),
              ]),

              const SizedBox(height:25),



              // Confirm changes button
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Flexible(flex: 1, child: SizedBox()),
                SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : () {_onContinuePressed();},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Confirm",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                const Flexible(flex: 1, child: SizedBox()),
              ]),
            ],
          )),
        ),
      ),
    );
  }



}
