import 'package:exploreo/screens/HomeScreen.dart';
import 'package:exploreo/screens/SignUpScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exploreo/user_auth/firebase_auth_implementation.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:provider/provider.dart';
import 'package:exploreo/user_auth/userState.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'ForgotPasswordScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuthService _auth = FirebaseAuthService();
  final bool isTesting =
      bool.fromEnvironment('IS_TESTING', defaultValue: false);
  void showErrorPopup(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _signInWithGoogle() async {
    User? user = await _auth.signInWithGoogle();
    if (user != null) {
      Provider.of<UserState>(context, listen: false).setUser(user);
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
        (Route<dynamic> route) => false,
      );
    } else {
      showErrorPopup(context, "Google sign-in failed");
    }
  }

  Future<void> _signInWithTwitter() async {
    User? user = await _auth.signInWithTwitter();
    if (user != null) {
      Provider.of<UserState>(context, listen: false).setUser(user);
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
        (Route<dynamic> route) => false,
      );
    } else {
      showErrorPopup(context, "Twitter sign-in failed");
    }
  }

  Future<void> _loginWithEmailAndPassword() async {
    if (isTesting) {
      User? user = await _auth.signInWithEmailAndPassword(
          'firebase@gmail.com', 'firebase');
      if (user != null) {
        Provider.of<UserState>(context, listen: false).setUser(user);
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        showErrorPopup(context, "Couldn't login");
      }
    } else {
      User? user = await _auth.signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
      if (user != null) {
        Provider.of<UserState>(context, listen: false).setUser(user);
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        showErrorPopup(context, "Couldn't login");
      }
    }
  }

  Future<void> _handleLogin() async {
    if (isTesting) {
      // Simulate login with test credentials
      await _loginWithEmailAndPassword();
    } else {
      // Check the current user
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        // User is logged in, navigate or perform actions
        print('User is logged in: ${user.email}');
      } else {
        // No user is logged in
        print('No user is logged in');
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _handleLogin(); // Call a separate method to handle login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Just in case you want to handle small screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34),
              ),
              const SizedBox(height: 100),

              // Email field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  key: const Key('email'),
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              const SizedBox(height: 20),

              // Password field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  key: const Key('password'),
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),

              const SizedBox(height:15),

              // Forgot Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(
                    text: "Forgot Password?",
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Google sign-in
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SignInButton(
                  Buttons.googleDark,
                  onPressed: _signInWithGoogle,
                ),
              ),

              const SizedBox(height: 5),

              // Twitter sign-in
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SignInButton(
                  Buttons.twitter,
                  text: "Sign in with Twitter",
                  onPressed: _signInWithTwitter,
                ),
              ),

              const SizedBox(height: 40),

              // Login button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: _loginWithEmailAndPassword,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text("Sign In", style: TextStyle(color: Colors.white),),
                ),
              ),

              const SizedBox(height: 20),

              // Sign up link
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign up here",
                        style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
