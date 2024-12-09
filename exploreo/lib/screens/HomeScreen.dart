import 'package:exploreo/screens/PlaceholderLoginScreen.dart';
import 'package:exploreo/screens/PlanTripScreen.dart';
import 'package:exploreo/screens/ProfileScreen.dart';
import 'package:exploreo/screens/TripsScreen.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/LoginScreen.dart';

class HomeScreen extends StatefulWidget {
  final int entryIndex;

  const HomeScreen({
    super.key,
    this.entryIndex = 0,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navbarIndex = 0;

  @override
  void initState() {
    super.initState();
    _navbarIndex = widget.entryIndex;
  }

  final List<Widget> _pages = [
    // Placeholder login page
    PlanTripScreen(),

    // Trips page
    TripsScreen(),

    // Profile Page
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _navbarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_navbarIndex],
        bottomNavigationBar: Navbar(
          currentIndex: _navbarIndex,
          onTap: _onTabTapped,
        ));
  }
}
