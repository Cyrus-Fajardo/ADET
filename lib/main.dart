import 'package:flutter/material.dart';
import 'pages/input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmic Profile',
      theme: ThemeData(primarySwatch: Colors.blue,useMaterial3: true),
      home: InputScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}