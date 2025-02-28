import 'package:app/screens/signup_screens.dart';
import 'package:flutter/material.dart';
import 'screens/login_screens.dart'; // Import the LoginScreen instead of HomeScreen

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name', // Optional: Add a title for your app
      theme: ThemeData(
        primarySwatch: Colors.green, // Optional: Customize your theme
      ),
      home: const SignupScreen(), // Set LoginScreen as the home screen
    );
  }
}
