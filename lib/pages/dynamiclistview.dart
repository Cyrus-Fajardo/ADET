import 'package:flutter/material.dart';
import 'package:listview_app/model/item.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  // final List<String> items=[
  //   'Music',
  //   'Movies',
  //   'Books',
  //   'Games',
  //   'Podcasts',
  // ];
  final List<Item> items=[
    Item("Google", "Classroom"),
    Item("Google", "Sheets"),
    Item("Google", "Slides"),
    Item("Google", "Docs"),
    Item("Google", "Mail"),
    Item("Google", "Maps"),
    Item("Google", "Photos"),
    Item("Google", "Meet"),
    Item("Google", "Keep"),
    Item("Google", "Authenticator"),
    Item("Google", "Drive"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Icon(Icons.label),
            title: Text(items[index].title),
            subtitle: Text(items[index].subtitle),
            );
        },),
    );
  }
}