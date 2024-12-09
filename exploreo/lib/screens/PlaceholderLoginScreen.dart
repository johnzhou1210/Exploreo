import 'package:exploreo/screens/ProfileScreen.dart';
import 'package:exploreo/screens/TripsScreen.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';


class PlaceholderLoginScreen extends StatefulWidget {
  const PlaceholderLoginScreen({super.key});
  @override
  State<PlaceholderLoginScreen> createState() => _PlaceholderLoginScreenState();
}


class _PlaceholderLoginScreenState extends State<PlaceholderLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome to Exploreo!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300]),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Login", style: TextStyle(fontSize: 18))),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 1, backgroundColor: Colors.grey[300]),
                  onPressed: () {},
                  child: const Text("Create account",
                      style: TextStyle(fontSize: 18))),
            ),
          ],
        )
    );
  }
}
