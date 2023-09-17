import 'package:boilerbites/Bites.dart';
import 'package:boilerbites/Meal.dart';
import 'package:boilerbites/Ranking.dart';
import 'package:boilerbites/prefs.dart';
import 'package:boilerbites/splash.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => Splash(),
      '/meal': (context) => Meal(),
      '/prefs': (context) => Preferences(),
      '/ranking': (context) => Ranking(),
      '/bites': (context) => Bites(),
    },
  ));
}
