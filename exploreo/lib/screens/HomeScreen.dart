import 'package:flutter/material.dart';
import 'package:exploreo/widgets/Navbar.dart';
import 'package:exploreo/screens/PlanTripScreen.dart';
import 'package:exploreo/screens/TripsScreen.dart';
import 'package:exploreo/screens/ProfileScreen.dart';
import 'package:exploreo/screens/LoginScreen.dart';
import 'package:provider/provider.dart';
import 'package:exploreo/user_auth/userState.dart';

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
    PlanTripScreen(),
    TripsScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _navbarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if the user is logged in using the UserState provider
    // final userState = Provider.of<UserState>(context);

    // if (userState.currentUser == null) {
    //   // If not logged in, show the LoginScreen
    //   return const LoginScreen();
    // }

    // If logged in, show the bottom navigation bar and associated pages
    return Scaffold(
      body: _pages[_navbarIndex],
      bottomNavigationBar: Navbar(
        currentIndex: _navbarIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
