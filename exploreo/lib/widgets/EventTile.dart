import 'package:flutter/material.dart';

import '../data/TestTripData.dart';
import '../screens/EditEventScreen.dart';
import '../screens/TripInfoScreen.dart';
import '../screens/TripsScreen.dart';

class EventTile extends StatefulWidget {
  int eventId;

  EventTile({
    required this.eventId,
  });

  @override
  _EventTileState createState() => _EventTileState();
}

class _EventTileState extends State<EventTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditEventScreen(eventId: widget.eventId)));
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
                          widget.event.title, // TODO: REPLACE WITH PLACES GET REQUEST TO GET PLACE
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
                            widget.event.date, // TODO: REPLACE WITH PLACES GET REQUEST TO GET DATE
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
