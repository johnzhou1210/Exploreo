import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



String FormatDateRange(DateTimeRange range) {
  final DateFormat formatter = DateFormat('MMM dd, yyyy');
  String start = formatter.format(range.start);
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