import 'package:flutter/material.dart';
import 'package:proyectoutil/screen/home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Util',
      home: const HomeScreen(),
    );
  }
}
