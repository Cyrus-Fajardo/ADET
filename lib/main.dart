import 'package:flutter/material.dart';
import 'package:fajardo_thactivity2/pages/zodiacfinder_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zodiac Finder App",
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true
      ),
      home: ZodiacFinderPage(),
    );
  }
}