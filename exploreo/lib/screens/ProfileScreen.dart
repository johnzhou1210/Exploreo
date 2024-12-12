import 'package:flutter/material.dart';
import 'package:exploreo/user_auth/firebase_auth_implementation.dart'; // Ensure this is the correct import path for FirebaseAuthService
import 'package:exploreo/screens/LoginScreen.dart'; // Ensure this is the correct import path for your LoginScreen
import 'package:exploreo/user_auth/userState.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  final FirebaseAuthService _auth =
      FirebaseAuthService(); // FirebaseAuthService instance

  ProfileScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    await _auth.signOut(); // Call the signOut method
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      (Route<dynamic> route) => false, // Remove all previous routes
    );
  }

  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    final String email = userState.currentUser?.email ?? "not logged in";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.person, size: 50, color: Colors.grey[700]),
          ),
          const SizedBox(height: 15),
          Text(
            userState.currentUser?.displayName ?? "Unknown User",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            email, // Replace with actual user email
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,

            ),
          ),
          const SizedBox(height: 30),
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
          // Logout Option
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () => _logout(context), // Call the logout function
          ),
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
        ],
      ),
    );
  }
}
