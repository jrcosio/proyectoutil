import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logos/logoutils_v2.webp',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            Text(
              'Útil',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: const Color.fromARGB(255, 9, 166, 214),
              ),
            ),
            const SizedBox(height: 40),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                // backgroundColor: const Color.fromARGB(255, 38, 168, 207),
                fixedSize: const Size(240, 80),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/iconos/google.webp',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'ENTRAR',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
