import 'package:exploreo/screens/AddEventsScreen.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:exploreo/screens/PlanTripScreen.dart';
import 'package:exploreo/screens/TripsScreen.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/screens/HomeScreen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // await dotenv.load(fileName: ".env");

  try {
    await dotenv.load(fileName: ".env");
    print("Environment file loaded successfully.");
  } catch (e) {
    print("Failed to load environment file: $e");
  }


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exploreo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 0, 133, 235),
            onPrimary: Colors.white,
            secondary: Colors.grey,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.red,
            surface: Colors.white,
            onSurface: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      // home: PlanTripScreen(),
    );
  }
}
