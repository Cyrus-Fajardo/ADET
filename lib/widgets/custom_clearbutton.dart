import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final VoidCallback onClear;

  ClearButton({required this.onClear});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClear,
      child: Text("Clear"),
    );
  }
}