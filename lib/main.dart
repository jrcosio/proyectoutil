import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proyectoutil/firebase_options.dart';
import 'package:proyectoutil/screen/home/homescreen.dart';
import 'package:proyectoutil/screen/login/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Nos aseguramos de que Flutter se inicialice correctamente
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GoogleSignIn.instance.initialize(); // Inicializamos Google Sign-In
  FlutterError.onError = FirebaseCrashlytics
      .instance
      .recordFlutterFatalError; //Nos aseguramos de que Flutter se inicialice correctamente

  // FirebaseCrashlytics.instance.crash(); //Crash para probar la funcionalidad

  final FirebaseAnalytics analytics =
      FirebaseAnalytics.instance; //Inicializamos FirebaseAnalytics

  await analytics.logEvent(
    //Registramos el evento de inicio de la app
    name: 'App_Iniciada',
    parameters: {'timestamp': DateTime.now().toIso8601String()},
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Si ya hay un usuario autenticado, ir directo a HomeScreen
    final bool isLoggedIn = FirebaseAuth.instance.currentUser != null;

    return MaterialApp(
      title: 'Proyecto Util',
      home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
    );
  }
}
