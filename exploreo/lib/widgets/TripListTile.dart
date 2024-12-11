import 'package:exploreo/api_calls/trip_functions.dart';
import 'package:exploreo/util/TimeRangeFormatter.dart';
import 'package:flutter/material.dart';

import 'package:exploreo/data/objects.dart';
import '../screens/TripInfoScreen.dart';
// import '../screens/TripsScreen.dart';

class TripListTile extends StatefulWidget {
  final int tripId;

  TripListTile({required this.tripId});

  @override
  _TripListTileState createState() => _TripListTileState();
}

class _TripListTileState extends State<TripListTile> {
  late Trip trip;

  @override
  void initState() async {
    super.initState();
    trip = (await getTripById(widget.tripId.toString()))!;
  }

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
                    child: Image.network(trip.imageUrl ?? 'https://example.com/default-image.jpg',
                        fit: BoxFit.fitHeight)),
                const SizedBox(width: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        trip.tripName,
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
                            FormatDateRange(DateTimeRange(start: DateTime.parse(trip.startDate), end: DateTime.parse(trip.endDate))),
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
