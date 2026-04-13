import 'package:fajardo_sweets/pages/about_page.dart';
import 'package:fajardo_sweets/pages/product_page.dart';
import 'package:flutter/material.dart';

class SweetsDashboard extends StatefulWidget {
  const SweetsDashboard({super.key});

  @override
  State<SweetsDashboard> createState() => _SweetsDashboardState();
}

class _SweetsDashboardState extends State<SweetsDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Her Garden'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
      ),
      body: ProductPage(),
    );
  }
}