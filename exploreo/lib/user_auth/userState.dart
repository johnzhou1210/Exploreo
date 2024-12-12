import 'package:exploreo/api_calls/user_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';

class UserState extends ChangeNotifier {
  User? _currentUser;
  String? _userId;

  User? get currentUser => _currentUser;
  String? get userId => _userId;

  static const String _userBoxName = 'userBox';

  /// Sets the user and fetches the associated userId.
  Future<void> setUser(User user) async {
    try {
      _currentUser = user;
      _userId = await getUserId(firebaseUid: user.uid);
      await _saveUserToHive(user);
      notifyListeners();
    } catch (e) {
      print("Failed to fetch or save userId: $e");
    }
  }

  /// Clears the user information.
  void clearUser() {
    _currentUser = null;
    _userId = null;
    Hive.box(_userBoxName).clear();
    notifyListeners();
  }

  /// Initializes the user from Hive and Firebase Auth.
  Future<void> initializeUser() async {
    print("Initializing user...");
    try {
      var userBox = await Hive.openBox(_userBoxName);
      String? savedUserId = userBox.get('userId');

      if (savedUserId != null) {
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          _currentUser = user;
          _userId = await getUserId(firebaseUid: user.uid);
        }
      }
      notifyListeners();
    } catch (e) {
      print("Error during user initialization: $e");
    }
  }

  /// Saves user information to Hive.
  Future<void> _saveUserToHive(User user) async {
    try {
      var userBox = await Hive.openBox(_userBoxName);
      await userBox.put('userId', user.uid);
      // Save other user details if needed
    } catch (e) {
      print("Failed to save user to Hive: $e");
    }
  }
}
