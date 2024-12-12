import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/HomeScreen.dart';
import '../screens/LoginScreen.dart';

class AuthWrapper extends StatelessWidget {
  Future<void> initializeUser() async {
    // Add your user initialization logic here
    await Future.delayed(Duration(seconds: 1)); // Example delay
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While connecting to Firebase
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            // User is signed in
            return FutureBuilder(
              future: initializeUser(),
              builder: (context, initSnapshot) {
                if (initSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                return const HomeScreen();
              },
            );
          } else {
            // User is not signed in
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
