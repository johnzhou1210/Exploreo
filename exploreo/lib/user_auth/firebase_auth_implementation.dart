import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("There was an error with sign up with email and password");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("There was an error with sign up with email and password");
    }
    return null;
  }

  Future<User?> signInWithGoogle() async {
    try {
      // Use Firebase Auth to start Google OAuth
      OAuthProvider googleProvider = OAuthProvider("google.com");

      // Prompt the user to select a Google account
      googleProvider.setCustomParameters({'prompt': 'select_account'});

      // Sign in with Google OAuth provider
      UserCredential userCredential =
          await _auth.signInWithPopup(googleProvider);

      return userCredential.user;
    } catch (e) {
      print("There was an error with Google sign in: $e");
    }
    return null;
  }
}
