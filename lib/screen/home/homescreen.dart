import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logos/logoutils_v2.webp',
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            Text('Útil', style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, fontFamily: 'Roboto', color: const Color.fromARGB(255, 9, 166, 214))),
          ],
        ),
      ),
    );
  }
}