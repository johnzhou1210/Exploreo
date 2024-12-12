import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/HomeScreen.dart';
import '../screens/LoginScreen.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: StreamBuilder(

        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              // User is signed in
              return const HomeScreen();
            } else {
              // User is not signed in
              return const LoginScreen();
            }
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );


  }

}