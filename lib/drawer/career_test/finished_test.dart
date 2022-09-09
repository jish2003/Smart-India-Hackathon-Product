import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scout_school/homepage/HomePage.dart';

class Test_SuccessPage extends StatefulWidget {
  const Test_SuccessPage({Key? key}) : super(key: key);

  @override
  State<Test_SuccessPage> createState() => _Test_SuccessPageState();
}

class _Test_SuccessPageState extends State<Test_SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Test Submitted Successfully",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Lottie.network(
                    "https://assets1.lottiefiles.com/private_files/lf30_poez9ped.json",
                    repeat: false),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18),
                  ),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
