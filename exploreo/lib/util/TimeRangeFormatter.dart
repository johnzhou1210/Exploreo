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

extension DateTimeRangeCompare on DateTimeRange {
  int compareTo(DateTimeRange other) {
    // Check if ranges overlap
    if (start.isBefore(other.end) && end.isAfter(other.start)) {
      return 0; // They overlap
    }

    // If this range ends before the other starts
    if (this.end.isBefore(other.start)) {
      return -1; // this range ends before other starts
    }

    // If this range starts after the other ends
    if (this.start.isAfter(other.end)) {
      return 1; // this range starts after other ends
    }

    return 0; // Fallback, should not reach here
  }
}
