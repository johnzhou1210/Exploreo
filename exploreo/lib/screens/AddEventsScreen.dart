import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:intl/intl.dart';
import '../data/TestTripData.dart';
import '../widgets/TripListTile.dart';
import 'TripsScreen.dart';

class AddEventsScreen extends StatefulWidget {
  final String tripName;
  final DateTimeRange? tripDateRange;
  final String tripNotes;
  final String? imageUrl;
  final List<TripEvent> events;

  const AddEventsScreen({
    super.key,
    required this.tripName,
    this.tripDateRange,
    required this.tripNotes,
    this.imageUrl,
    required this.events,
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
                    image: NetworkImage(widget.imageUrl ??
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
                          "Add events to your trip to ${widget.tripName}",
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
                            List<TripEvent> updatedEvents =
                                List.from(widget.events);
                            TripEvent newEvent = TripEvent(
                                title: eventNameController.text,
                                date: FormatDateRange(selectedDates),
                                description: eventNotesController.text);
                            updatedEvents.add(newEvent);
                            Trip newTrip = Trip(
                                title: widget.tripName,
                                date: FormatDateRange(widget.tripDateRange),
                                imageUrl: widget.imageUrl ??
                                    'https://example.com/default-image.jpg',
                                events: updatedEvents,
                                description: widget.tripNotes);
                            // Add to trips list
                            trips.add(newTrip);

                            // Send user to trips page
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreen(entryIndex:  1))); // Whatever page it will go back to
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
}
