import 'dart:async';

import 'package:exploreo/api_calls/trip_functions.dart';
// import 'package:exploreo/api_calls/user_functions.dart';
// import 'package:exploreo/screens/AddEventsScreen.dart';
// import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:exploreo/widgets/Navbar.dart';
// import 'package:exploreo/screens/LoginScreen.dart';
// import 'package:intl/intl.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../user_auth/userState.dart';
import '../util/ImageFetcher.dart';
import '../data/objects.dart';
import '../util/TimeRangeFormatter.dart';
// import '../widgets/TripListTile.dart';
import 'TripInfoScreen.dart';
// import 'TripsScreen.dart';

class PlanTripScreen extends StatefulWidget {
  const PlanTripScreen({super.key});

  @override
  State<PlanTripScreen> createState() => _PlanTripScreenState();
}

class _PlanTripScreenState extends State<PlanTripScreen> {
  DateTimeRange? selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  final TextEditingController tripNameController = TextEditingController();
  final TextEditingController tripNotesController = TextEditingController();

  String? _imageUrl;
  bool _isLoading = false;

  Future<void> _searchImage(String query) async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final imageUrl = await FetchImage(query);
      if (!mounted) return;

      setState(() {
        _imageUrl = imageUrl;
      });
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _onContinuePressed() async {
    if (!mounted) return;

    final String tripName =
        tripNameController.text.isEmpty ? 'Untitled' : tripNameController.text;
    final userId = Provider.of<UserState>(context).userId;

    if (userId == null) return;

    await _searchImage(tripName);

    if (!mounted) return;

    try {
      final Trip? tripObj = await addTripCall(
          userId: userId,
          tripName: tripNameController.text,
          startDate: selectedDates!.start,
          endDate: selectedDates!.end,
          description: tripNotesController.text,
          imageUrl: _imageUrl ?? 'https://example.com/default-image.jpg');

      if (!mounted) return;

      if (tripObj != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => TripInfoScreen(tripId: tripObj.id)),
        );
      }
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error creating trip: $e')),
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
              const Row(
                children: [
                  SizedBox(width: 60),
                  SizedBox(width: 80),
                  Text(
                    'Plan a new trip',
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
                      "Build an itinerary and map out your upcoming travel plans",
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
                              prefixIcon:
                                  const Icon(CupertinoIcons.calendar_today),
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
                      onPressed: _isLoading
                          ? null
                          : () {
                              _onContinuePressed();
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "Continue",
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
