import 'package:coffe_ui/screen/home_page.dart';
import 'package:coffe_ui/screen/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
