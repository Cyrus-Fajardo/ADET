import 'package:flutter/material.dart';

class InteractiveListView extends StatefulWidget {
  const InteractiveListView({super.key});

  @override
  State<InteractiveListView> createState() => _InteractiveListViewState();
}

class _InteractiveListViewState extends State<InteractiveListView> {
  final List<String> items=List<String>.generate(20,(i)=>"Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive List"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Item $index dismissed"))
              );
            },
            background: Container(color: Colors.red,),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}