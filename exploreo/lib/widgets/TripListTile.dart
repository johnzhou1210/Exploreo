import 'package:flutter/material.dart';

import '../data/TestTripData.dart';
import '../screens/TripInfoScreen.dart';
import '../screens/TripsScreen.dart';

class TripListTile extends StatefulWidget {
  final int tripId;

  TripListTile({required this.tripId});

  @override
  _TripListTileState createState() => _TripListTileState();
}

class _TripListTileState extends State<TripListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TripInfoScreen(tripId: widget.tripId)));
      },
      child: Container(
        height: 130,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Card(
            elevation: 2,
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(widget.trip.imageUrl, // TODO: REPLACE WITH TRIPS GET REQUEST TO GET IMAGE URL
                        fit: BoxFit.fitHeight)),
                const SizedBox(width: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        widget.trip.title, // TODO: REPLACE WITH TRIPS GET REQUEST TO GET TITLE
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: 'Serif',
                          height: 1.5,
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
                            widget.trip.date, // TODO: REPLACE WITH TRIPS GET REQUEST TO GET DATE
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
