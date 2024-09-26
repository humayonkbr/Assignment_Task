import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page '),
        backgroundColor: Colors.greenAccent,

      ),
      body: ListView.builder(




        itemCount: 10,
        itemBuilder: (BuildContext, int index) {
          return ListTile(


            // tileColor: Colors.cyanAccent,
            title: Text('$index . Notes name', ),
            subtitle: Text('Description'),


          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/NoteScreen');


        },
        child: Icon(Icons.add),

      ),
    );
  }
}
