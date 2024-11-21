import 'package:flutter/material.dart';

import '../screens/TripsScreen.dart';

class TripListTile extends StatefulWidget {
  final Trip trip;

  TripListTile({required this.trip});

  @override
  _TripListTileState createState() => _TripListTileState();

}

class _TripListTileState extends State<TripListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Card(
          elevation: 2,

          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.trip.imagePath,
                  height:  140,
                  width: 100,
                  fit: BoxFit.fitHeight
                ),
              ),

              SizedBox(width: 15),

              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 100, maxWidth: 200
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(height: 10),
                    Text(
                      widget.trip.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: 'Serif',
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          widget.trip.date,
                          style: TextStyle(
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
    );
  }
}


