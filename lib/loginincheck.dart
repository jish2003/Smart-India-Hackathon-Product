import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/loginPage.dart';

class LoginInCheck extends StatelessWidget {
  const LoginInCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return MyHomePage();
        } else {
          return loginPage();
        }
      }),
    ));
  }
}
