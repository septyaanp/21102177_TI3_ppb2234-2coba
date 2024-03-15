import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          backgroundColor: Color.fromARGB(255, 81, 156, 248),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
