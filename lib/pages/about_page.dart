import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Version: 3.16.20.26'),
            const SizedBox(height: 10),
            const Text('Purpose: A digital garden, designed solely to curate the hue of her heart.'),
            const SizedBox(height: 10),
            const Text('Technologies Used: Flutter, Dart'),
            const SizedBox(height: 20),
            const Text(
              'Developer Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Developer: Cyrus J. Fajardo, ID: 24B2449'),
            const Text('Bio: Fueled by caffeine, insomnia, and through sheer fucking will to make ends meet and pass'),
            ],
        ),
      ),
    );
  }
}