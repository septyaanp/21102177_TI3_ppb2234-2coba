import 'dart:js';

import 'package:flutter/material.dart';
import 'package:navigation_dan_routing_prak5/home_page.dart';
import 'package:navigation_dan_routing_prak5/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second_page': (context) => const SecondPage(),
      },
      home: HomePage(),
    );
  }
}
