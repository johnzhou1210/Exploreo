import 'dart:io';

import 'package:exploreo/api_calls/place_functions.dart';
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
import '../util/Snack.dart';
import '../util/TimeRangeFormatter.dart';
import '../widgets/TripListTile.dart';
import 'TripsScreen.dart';

class EditEventScreen extends StatefulWidget {
  int eventId;
  String? imageUrl; // just for visuals
  String tripName; // just for visuals

  // just to restrict user input the dates within trip period
  DateTime minDate;
  DateTime maxDate;

  EditEventScreen({
    super.key,
    required this.eventId,
    this.imageUrl,
    required this.tripName,
    required this.minDate,
    required this.maxDate,
  });

  @override
  State<EditEventScreen> createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  DateTimeRange? selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventNotesController = TextEditingController();

  String? _imageUrl;
  bool _isLoading = false;

  late Place eventRef;

  @override
  Future<void> initState() async {
    super.initState();

    Place? eventRef = await getPlaceByIdCall(widget.eventId.toString());
    eventNameController.text = eventRef!.placeName;
    eventNotesController.text = eventRef.description!;
    selectedDates = DateTimeRange(
        start: DateTime.parse(eventRef.startDate ?? ''),
        end: DateTime.parse(eventRef.endDate ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Background image
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.imageUrl != null
                        ? NetworkImage(widget.imageUrl!)
                        : const AssetImage("assets/images/placeholder.jpeg"),
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

              // Page Content
              Center(
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
                        color: Colors.transparent,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color.fromARGB(50, 200, 200, 200),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Whatever page it will go back to
                            },
                            iconSize: 16,
                            icon: const Icon(Icons.close),
                          ),
                        ),
                      ),
                      const SizedBox(width: 100),
                      const Text(
                        'Edit event',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Flexible(
                      flex: 2,
                      child: SizedBox(),
                    ),
                    Flexible(
                        flex: 5,
                        child: Text(
                          "Make changes to ${widget.tripName}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        )),
                    const Flexible(
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
                                controller: eventNameController,
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
                                          firstDate: widget.minDate,
                                          lastDate: widget.maxDate);
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
                              controller: eventNotesController,
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

                  // Delete Event Button
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Flexible(flex: 1, child: SizedBox()),
                    SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            // Remove event from trips

                            // TODO: PLACES DELETE REQUEST BY GET REQUEST TO GET PLACE ID
                            bool success = await deletePlaceByIdCall(
                                widget.eventId.toString());

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripInfoScreen(
                                        tripId: eventRef.tripId)));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Delete Event",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    const Flexible(flex: 1, child: SizedBox()),
                  ]),

                  const SizedBox(height: 25),

                  // Confirm changes button
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Flexible(flex: 1, child: SizedBox()),
                    SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // Update event

                            /* // TODO: PLACES PUT REQUEST TO UPDATE PLACE
                                     TripEvent eventRef = widget.trip.events.firstWhere(
                                  (event) => event.id == widget.eventId);
                              eventRef.title = eventNameController.text.isEmpty
                                ? 'Untitled'
                                : eventNameController.text;
                              eventRef.description = eventNotesController.text;
                             eventRef.date = FormatDateRange(selectedDates!);
                            * */

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripInfoScreen(
                                        tripId: eventRef.tripId)));
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
            ],
          ),
        ),
      ),
    );
  }
}
