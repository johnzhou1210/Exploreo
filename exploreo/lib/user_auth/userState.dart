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
      await _saveUserToHive(_userId!);
      print("User set with userId: $_userId");

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
      User? user = FirebaseAuth.instance.currentUser;

      if (savedUserId == null) {
        if (user != null) {
          _userId = await getUserId(firebaseUid: user.uid);
          await userBox.put('userId', _userId);
          print('User initialized from Firebase Auth with userId: $_userId');
        }
      } else {
        _userId = savedUserId;
        print('User initialized from Hive with userId: $_userId');
      }
      _currentUser = user;
      notifyListeners();
    } catch (e) {
      print("Error during user initialization: $e");
    }
  }

  /// Saves user information to Hive.
  Future<void> _saveUserToHive(String userId) async {
    try {
      var userBox = await Hive.openBox(_userBoxName);
      await userBox.put('userId', userId);
      print("User saved to Hive with userId: $userId");
      // Save other user details if needed
    } catch (e) {
      print("Failed to save user to Hive: $e");
    }
  }
}
