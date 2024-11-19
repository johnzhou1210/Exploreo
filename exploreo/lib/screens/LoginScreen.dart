import 'package:exploreo/widgets/Navbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exploreo/user_auth/firebase_auth_implementation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuthService _auth = FirebaseAuthService();

  Future<void> _signInWithGoogle() async {
    User? user = await _auth.signInWithGoogle();
    if (user != null) {
      print("Google sign-in successful: ${user.email}");
    } else {
      print("Google sign-in failed");
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text("Login",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 34)),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.teal[100],
              elevation: 10,
              onPressed: _signInWithGoogle,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45.0,
                    width: 30.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("/images/googleimage.png"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Sign in with Google")
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                )),
            const SizedBox(height: 20),
            SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
