import 'package:exploreo/api_calls/place_functions.dart';
import 'package:exploreo/util/TimeRangeFormatter.dart';
import 'package:flutter/material.dart';

import '../data/objects.dart';
import '../screens/EditEventScreen.dart';
import '../screens/TripInfoScreen.dart';
import '../screens/TripsScreen.dart';

class EventTile extends StatefulWidget {
  int eventId;
  String imageUrl; // just for visuals
  String tripName; // just for visuals

  // Just to restrict user input to date range when editing. These dates are start and end dates for Trip, NOT Place.
  DateTime tripStart, tripEnd;

  EventTile({
    required this.eventId,
    required this.imageUrl,
    required this.tripName,
    required this.tripStart,
    required this.tripEnd,
  });

  @override
  _EventTileState createState() => _EventTileState();
}

class _EventTileState extends State<EventTile> {

  late Place eventRef;

  @override
  void initState() async {
    super.initState();
    eventRef = (await getPlaceByIdCall(widget.eventId.toString()))!;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditEventScreen(minDate: widget.tripStart, maxDate: widget.tripEnd,  tripName: widget.tripName, imageUrl: widget.imageUrl, eventId: widget.eventId)));
      },
      child: Container(
        height: 80,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Card(
            elevation: 2,
            child: Row(
              children: [
                const SizedBox(width: 15),
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 50, maxWidth: MediaQuery.of(context).size.width / 1.33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          eventRef.placeName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Serif',
                            height: 1.5,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.grey,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            FormatDateRange(DateTimeRange(start:  DateTime.parse(eventRef.startDate ?? ''), end: DateTime.parse(eventRef.endDate ?? ''))),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
