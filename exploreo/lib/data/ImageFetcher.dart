import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> FetchImage(String query) async {
  final String accessKey = 'vsin1BRLPtFEJ28ElzLxGx7CWsMXjhyejF2jD8I1mGox8doZP9V8cwJm';
  final String url = 'https://api.pexels.com/v1/search?query=$query&per_page=1';
  final response = await http.get(
    Uri.parse(url),
    headers: {'Authorization': accessKey},
  );

  if (response.statusCode == 200) {
    print("in here");
    final data = json.decode(response.body);
    final List photos = data['photos'];
    if (photos.isNotEmpty) {
      return photos[0]['src']['portrait'];
    } else {
      return null;
    }

  } else {
    throw Exception('Failed to fetch image: ${response.statusCode}');
  }


}