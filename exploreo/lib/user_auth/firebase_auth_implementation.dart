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
      print("There was an error with sign up with email and password: $e");
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
      print("There was an error with sign in with email and password: $e");
    }
    return null;
  }

  Future<User?> signInWithGoogle() async {
    try {
      OAuthProvider googleProvider = OAuthProvider("google.com");

      googleProvider.setCustomParameters({'prompt': 'select_account'});

      UserCredential userCredential =
          await _auth.signInWithPopup(googleProvider);

      return userCredential.user;
    } catch (e) {
      print("There was an error with Google sign in: $e");
    }
    return null;
  }

  /// Logs out the currently signed-in user.
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      print("User signed out successfully");
    } catch (e) {
      print("There was an error signing out: $e");
    }
  }
}
