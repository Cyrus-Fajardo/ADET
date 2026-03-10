import 'package:flutter/material.dart';
import 'package:listview_app/pages/dynamiclistview.dart';
import 'package:listview_app/pages/interactivelistview.dart';
import 'package:listview_app/pages/staticlistview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.black38),useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(title: 'List View Application'),
        '/staticlist':(context)=>const StaticListView(),
        '/dynamiclist':(context)=>DynamicListView(),
        '/interactivelist':(context)=>InteractiveListView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/staticlist');}, child: Text("Static ListView")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/dynamiclist');}, child: Text("Dynamic ListView")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/interactivelist');}, child: Text("Interactive ListView")),
          ],
        ),

      ),
    );
  }
}
