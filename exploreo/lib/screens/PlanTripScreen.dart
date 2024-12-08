import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:intl/intl.dart';

import '../widgets/TripListTile.dart';

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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const HomeScreen())); // Whatever page it will go back to
                        },
                        iconSize: 16,
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
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
                              hintText: 'e.g. Paris, Hawaii, Tokyo',
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

              SizedBox(height: 250),

              // Plan trip button
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(flex: 1, child: SizedBox()),
                SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        /*TODO*/
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Plan trip",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Flexible(flex: 1, child: SizedBox()),
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
    return '$start -$end';
  }
}
