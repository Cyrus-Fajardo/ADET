import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
      ),
    );
  }
}