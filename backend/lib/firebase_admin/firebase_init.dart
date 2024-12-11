import 'dart:io';
import 'dart:convert'; // For JSON decoding
import 'package:firebase_admin/firebase_admin.dart';

void initializeFirebase() {
  final app = FirebaseAdmin.instance.initializeApp(
    AppOptions(
      credential: Credentials.applicationDefault()!,
    ),
  );

  print('Firebase initialized with default credentials!');
  print(app);
}

void main() {
  initializeFirebase();
}
