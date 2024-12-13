




import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'dashboard.dart'; // Make sure this import path is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/onboarding1',
      routes: {
        '/onboarding1': (context) => OnboardingScreen1(),
        '/onboarding2': (context) => OnboardingScreen2(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        '/dashboard': (context) => Dashboard(), // Ensure Dashboard is defined correctly
      },
    );
  }
}
