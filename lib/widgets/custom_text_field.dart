import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType textInputType;
  final IconData icon;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputType,
    required this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          prefixIconColor: Theme.of(context).colorScheme.primary,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}