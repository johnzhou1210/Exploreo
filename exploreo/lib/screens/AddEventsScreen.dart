import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:intl/intl.dart';

import '../widgets/TripListTile.dart';

class AddEventsScreen extends StatefulWidget {
  final String tripName;
  final DateTimeRange? tripDateRange;
  final String tripNotes;
  final String? imageUrl;

  const AddEventsScreen({
    Key? key,
    required this.tripName,
    this.tripDateRange,
    required this.tripNotes,
    this.imageUrl,
  }) : super(key: key);

  @override
  State<AddEventsScreen> createState() => _AddEventsScreenState();
}

class _AddEventsScreenState extends State<AddEventsScreen> {
  DateTimeRange? selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

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
                          child: ClipOval(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeScreen())); // Whatever page it will go back to
                              },
                              iconSize: 16,
                              icon: const Icon(CupertinoIcons.back),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 100),
                      const Text(
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
                    Flexible(
                      flex: 2,
                      child: SizedBox(),
                    ),
                    Flexible(
                        flex: 5,
                        child: Text(
                          "Add events to your trip to ${widget.tripName}",
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(flex: 1, child: SizedBox()),
                          Flexible(
                              flex: 10,
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.location_on_outlined),
                                  border: OutlineInputBorder(),
                                  hintText:
                                      'e.g. Museum Tour, Skiing, Kayaking',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              )),
                          Flexible(flex: 1, child: SizedBox()),
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
                              minLines: 5,
                              maxLines: null,
                              decoration: InputDecoration(
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
                    Flexible(flex: 1, child: SizedBox()),
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
                    Flexible(flex: 1, child: SizedBox()),
                  ]),

                  SizedBox(height: 20),

                  // Confirm button
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Flexible(flex: 1, child: SizedBox()),
                    SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            /*TODO: Create a Trip object and add it to the user's database*/
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
                    Flexible(flex: 1, child: SizedBox()),
                  ]),
                ],
              ),
            ],
          ),
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
}
