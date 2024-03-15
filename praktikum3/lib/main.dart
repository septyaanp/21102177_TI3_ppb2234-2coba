import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Pertemuan 3'),
          backgroundColor: Color.fromARGB(
              255, 81, 156, 248), // Ubah warna latar belakang AppBar
        ),
        body: Container(
          margin: EdgeInsets.only(top: 100, left: 50),
          color: Colors.amber,
          child: Text('Hello World',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 50,
              )
              // Ubah warna teks
              ),
        ),
      ),
    );
  }
}
