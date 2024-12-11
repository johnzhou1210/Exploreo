import 'package:firebase_auth/firebase_auth.dart';

Future<String?> getIdToken() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    final token = await user.getIdToken();
    print("THIS IS TOKEN : $token");
    return token;
  }
  return null;
}
