import 'package:flutter/material.dart';

class StaticListView extends StatelessWidget {
  const StaticListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Static List"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(color: Colors.black54,padding: EdgeInsets.all(16),child: Center(child: Row(
            children: [
              Image.asset('assets/images/watching-a-movie.png',width: 40,),
              SizedBox(width: 10,),
              Text("MOVIES",style: TextStyle(fontSize: 16),),
            ],
          ))),
          ListTile(leading: Icon(Icons.movie,color: Colors.cyan.shade400,),title: Text("Smile",style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text("Parker Finn",style: TextStyle(fontStyle: FontStyle.italic),),trailing: Icon(Icons.preview_rounded,color: Colors.grey[600],),),
          ListTile(leading: Icon(Icons.movie,color: Colors.greenAccent,),title: Text("Harry Pota",style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text("JK Rowling",style: TextStyle(fontStyle: FontStyle.italic),),trailing: Icon(Icons.preview_rounded,color: Colors.grey[600],),),
          SizedBox(height: 8,),
          Container(color: Colors.pink.shade300,padding: EdgeInsets.all(16),child: Center(child: Text("MUSIC",style: TextStyle(fontSize: 16),))),
          ListTile(leading: Icon(Icons.music_note_rounded,color: Colors.cyan.shade400,),title: Text("All The Stars",style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text("Kendrick Lamar & SZA",style: TextStyle(fontStyle: FontStyle.italic),),trailing: Icon(Icons.music_video_rounded,color: Colors.grey[600],),),
          ListTile(leading: Icon(Icons.music_note_rounded,color: Colors.greenAccent,),title: Text("Luther",style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text("Kendrick Lamar & SZA",style: TextStyle(fontStyle: FontStyle.italic),),trailing: Icon(Icons.music_video_rounded,color: Colors.grey[600],),),
          SizedBox(height: 8,),
          Container(color: Colors.amber,padding: EdgeInsets.all(16),child: Center(child: Text("Item #3",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.deepOrange,padding: EdgeInsets.all(16),child: Center(child: Text("Item #4",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.green,padding: EdgeInsets.all(16),child: Center(child: Text("Item #5",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.yellow,padding: EdgeInsets.all(16),child: Center(child: Text("Item #6",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.blue.shade400,padding: EdgeInsets.all(16),child: Center(child: Text("Item #7",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.red,padding: EdgeInsets.all(16),child: Center(child: Text("Item #8",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.grey,padding: EdgeInsets.all(16),child: Center(child: Text("Item #9",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.red,padding: EdgeInsets.all(16),child: Center(child: Text("Item #10",style: TextStyle(fontSize: 16),))),
          SizedBox(height: 8,),
          Container(color: Colors.red,padding: EdgeInsets.all(16),child: Center(child: Text("Item #11",style: TextStyle(fontSize: 16),))),
          ],
      ),
    );
  }
}