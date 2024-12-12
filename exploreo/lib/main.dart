import 'package:exploreo/widgets/AuthWrapper.dart';
import 'package:flutter/material.dart';
import 'package:exploreo/screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:exploreo/user_auth/userState.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();


  runApp(
    ChangeNotifierProvider(
      create: (context) => UserState()..initializeUser(), // Initialize UserState here
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exploreo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 0, 133, 235),
          onPrimary: Colors.white,
          secondary: Colors.grey,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          surface: Colors.white,
          onSurface: Color.fromARGB(255, 0, 0, 0),
        ),
        useMaterial3: true,
      ),
      home: AuthWrapper(), // Use AuthWrapper to manage authentication flow
    );
  }
}
