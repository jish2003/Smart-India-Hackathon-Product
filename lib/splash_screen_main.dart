import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/loginPage.dart';
import 'package:scout_school/loginincheck.dart';

void main() => runApp(Splash_Screen());

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          child: Image.asset(
            "assets/Scout_School_logo.jpeg",
          ),
        ),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
        nextScreen: LoginInCheck(),
      ),
    );
  }
}
