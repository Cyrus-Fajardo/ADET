import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15
          ),
        )
        ),
    );
  }
}