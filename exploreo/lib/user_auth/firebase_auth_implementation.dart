import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("There was an error with sign up with email and password: $e");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
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

  Future<User?> signInWithTwitter() async {
    try {
      final twitterLogin = TwitterLogin(
        apiKey: dotenv.env['TWITTER_API_KEY']!,
        apiSecretKey: dotenv.env['TWITTER_API_SECRET']!,
        redirectURI: 'myapp://auth',
      );

      final authResult = await twitterLogin.login();
      switch (authResult.status) {
        case TwitterLoginStatus.loggedIn:
          final twitterAuthCredential = TwitterAuthProvider.credential(
            accessToken: authResult.authToken!,
            secret: authResult.authTokenSecret!,
          );
          final userCredential =
              await _auth.signInWithCredential(twitterAuthCredential);
          return userCredential.user;

        case TwitterLoginStatus.cancelledByUser:
          print("Twitter sign in cancelled by user");
          break;

        case TwitterLoginStatus.error:
          print(
              "There was an error with Twitter sign in: ${authResult.errorMessage}");
          break;

        default:
          print("Unknown Twitter login status");
      }
    } catch (e) {
      print("There was an error with Twitter sign in: $e");
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      print("User signed out successfully");
    } catch (e) {
      print("There was an error signing out: $e");
    }
  }
}

