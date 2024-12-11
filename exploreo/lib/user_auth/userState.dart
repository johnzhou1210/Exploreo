import 'package:exploreo/api_calls/user_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserState extends ChangeNotifier {
  User? _currentUser;
  String? _userId;

  User? get currentUser => _currentUser;
  String? get userId => _userId;

  Future<void> setUser(User user) async {
    try {
      _currentUser = user;
      _userId = await getUserId(firebaseUid: user.uid);
      notifyListeners();
    } catch (e) {
      print("Failed to fetch userId: $e");
    }
  }

  void clearUser() {
    _currentUser = null;
    _userId = null;
    notifyListeners();
  }
}
