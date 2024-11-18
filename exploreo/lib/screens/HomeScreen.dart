import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text(
            'Welcome to exploreo!',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar: Navbar());
  }
}
