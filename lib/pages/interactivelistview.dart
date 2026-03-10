import 'package:flutter/material.dart';

class InteractiveListView extends StatefulWidget {
  const InteractiveListView({super.key});

  @override
  State<InteractiveListView> createState() => _InteractiveListViewState();
}

class _InteractiveListViewState extends State<InteractiveListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive List"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
      ),
    );
  }
}