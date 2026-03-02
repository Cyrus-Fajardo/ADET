import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String nickname;
  final String zodiac;

  ResultScreen({required this.nickname, required this.zodiac});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Result Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            SizedBox(height: 20),
            Text("Nickname: $nickname", style: TextStyle(fontSize: 18)),
            Text("Favorite Zodiac: $zodiac", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}