import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:proyectoutil/firebase_options.dart';
import 'package:proyectoutil/screen/login/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Nos aseguramos de que Flutter se inicialice correctamente
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // FirebaseCrashlytics.instance.crash();

  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  await analytics.logEvent(
    name: 'App_Iniciada',
    parameters: {'timestamp': DateTime.now().toIso8601String()},
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Proyecto Util', home: const LoginScreen());
  }
}
