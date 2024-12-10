import 'package:exploreo/screens/HomeScreen.dart';
import 'package:exploreo/screens/TripInfoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:intl/intl.dart';
import '../data/TestTripData.dart';
import '../widgets/TripListTile.dart';
import 'TripsScreen.dart';

class AddEventsScreen extends StatefulWidget {
  Trip trip;

  AddEventsScreen({
    super.key,
    required this.trip,
  });

  @override
  State<AddEventsScreen> createState() => _AddEventsScreenState();
}

class _AddEventsScreenState extends State<AddEventsScreen> {
  DateTimeRange? selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventNotesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedDates = ParseDateRange(widget.trip.date);
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
                    image: NetworkImage(widget.trip.imageUrl),
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
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  // Header and back button
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Back button (commented out because I don't want to deal with the logic
                      // const SizedBox(width: 15),
                      // Material(
                      //   color: Colors.transparent,
                      //   child: Ink(
                      //
                      //     decoration: const ShapeDecoration(
                      //       shape: CircleBorder(),
                      //       color: Color.fromARGB(50, 200, 200, 200),
                      //     ),
                      //     child: ClipOval(
                      //       child: IconButton(
                      //         onPressed: () {
                      //           Navigator.of(context).push(MaterialPageRoute(
                      //               builder: (context) =>
                      //                   const HomeScreen())); // Whatever page it will go back to
                      //         },
                      //         iconSize: 16,
                      //         icon: const Icon(CupertinoIcons.back),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(width: 100),

                      Text(
                        'Add events',
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
                          "Add events to your trip to ${widget.trip.title}",
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
                                  hintText:
                                      'e.g. Museum Tour, Skiing, Kayaking',
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
                                      Icon(CupertinoIcons.calendar_today),
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

                  SizedBox(height: 230),

                  // Add another event button
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Flexible(flex: 1, child: SizedBox()),
                    SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            /*TODO: Redirect user to this same page but with the fields empty for input again to add another event*/
                            widget.trip.events.add(TripEvent(title: eventNameController.text, date: FormatDateRange(selectedDates), description: eventNotesController.text));
                            print(widget.trip.events.length);
                            Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => AddEventsScreen(trip: widget.trip))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Add another",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    const Flexible(flex: 1, child: SizedBox()),
                  ]),

                  const SizedBox(height: 20),

                  // Confirm button
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Flexible(flex: 1, child: SizedBox()),
                    SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            /* TODO: Create a Trip object and add it to the user's database and also add the array of events to this new Trip object */

                            TripEvent newEvent = TripEvent(
                                title: eventNameController.text,
                                date: FormatDateRange(selectedDates),
                                description: eventNotesController.text);
                            widget.trip.events.add(newEvent);
                            Trip newTrip = Trip(
                                title: widget.trip.title,
                                date: widget.trip.date,
                                imageUrl: widget.trip.imageUrl,
                                events: widget.trip.events,
                                description: widget.trip.description);
                            // Add to trips list
                            trips.add(newTrip);

                            // Send user to trips page
                            Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder: (context) => TripInfoScreen(trip: newTrip))
                            );
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  String FormatDateRange(DateTimeRange? range) {
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    String start = formatter.format(range!.start);
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

}
