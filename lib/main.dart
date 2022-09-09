import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/splash_screen_main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ScoutSchool",
    home: Splash_Screen(),
    theme: ThemeData(primaryColor: Colors.blue),
  ));
}
