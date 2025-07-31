import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // ✅ Correct: Start with SplashScreen
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwamiSeva - श्री स्वामी समर्थ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Color(0xFFF8F8F8), // Light saffron
      ),
      home: SplashScreen(),
    );
  }
}
