import 'dart:io';

import 'package:exploreo/data/TestTripData.dart';
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

import '../widgets/TripListTile.dart';
import 'TripsScreen.dart';

class EditTripScreen extends StatefulWidget {
  Trip trip;

  EditTripScreen({
    super.key,
    required this.trip,
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
  List<TripEvent> events = [];
  String? _imageUrl;


  @override
  void initState() {
    super.initState();
    tripNameController.text = widget.trip.title;
    tripNotesController.text = widget.trip.description;
    events = widget.trip.events;
    _imageUrl = widget.trip.imageUrl;
    selectedDates = ParseDateRange(widget.trip.date);
  }


  Future<void> _searchImage(String query) async {
    setState(() {
      _imageUrl = null;
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
              SizedBox(height: 40),

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
                              prefixIcon: Icon(CupertinoIcons.calendar_today),
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

              const SizedBox(height: 250),

              // Plan trip button
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Flexible(flex: 1, child: SizedBox()),
                SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        /*TODO: Proceed to add events page*/
                        // Get an image of the destination name from Unsplash API and get the first result
                        _searchImage(tripNameController.text);

                        Future.delayed(Duration(seconds: 1), () {
                          // UPDATE TRIP
                          Trip foundTrip = trips.firstWhere((item) => item.id == widget.trip.id);

                          foundTrip.title = tripNameController.text;
                         foundTrip.date = FormatDateRange(selectedDates!);
                          foundTrip.imageUrl = _imageUrl ?? 'https://example.com/default-image.jpg';
                          foundTrip.description = tripNotesController.text;

                          Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => TripInfoScreen(trip: foundTrip)),
                          );
                        });

                      },
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

  String FormatDateRange(DateTimeRange range) {
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    String start = formatter.format(range.start);
    String end = formatter.format(range.end);
    return '$start - $end';
  }

  // Undoes format date range function
  DateTimeRange ParseDateRange(String dateRangeStr) {
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    // Split the string on " - " to get start and end dates
    final parts = dateRangeStr.split(' - ');

    if (parts.length != 2) {
      throw const FormatException('Invalid date range format');
    }

    // Parse the start and end dates back into DateTime objects
    DateTime start = formatter.parse(parts[0]);
    DateTime end = formatter.parse(parts[1]);

    // Return a DateTimeRange object
    return DateTimeRange(start: start, end: end);
  }

  Future<String?> FetchImage(String query) async {
    final String accessKey = 'vsin1BRLPtFEJ28ElzLxGx7CWsMXjhyejF2jD8I1mGox8doZP9V8cwJm';
    final String url = 'https://api.pexels.com/v1/search?query=$query&per_page=1';
    final response = await http.get(
      Uri.parse(url),
          headers: {'Authorization': accessKey},
    );

    if (response.statusCode == 200) {
      print("in here");
      final data = json.decode(response.body);
      final List photos = data['photos'];
      if (photos.isNotEmpty) {
        return photos[0]['src']['portrait'];
      } else {
        return null;
      }

    } else {
      throw Exception('Failed to fetch image: ${response.statusCode}');
    }


  }

}
