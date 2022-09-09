import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question9.dart';

String? ques8;

class Career_Test8 extends StatefulWidget {
  Career_Test8({Key? key}) : super(key: key);

  @override
  State<Career_Test8> createState() => _Career_Test8State();
}

class _Career_Test8State extends State<Career_Test8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
                child: Text(
              "Q8. In your childhood, did you try mixing various fluids to observe the colour change?",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("Yes, I have tried many times"),
                      value: "male",
                      groupValue: ques8,
                      onChanged: (value) {
                        setState(() {
                          ques8 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("I have never tried"),
                      value: "female",
                      groupValue: ques8,
                      onChanged: (value) {
                        setState(() {
                          ques8 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("I tried once"),
                      value: "other",
                      groupValue: ques8,
                      onChanged: (value) {
                        setState(() {
                          ques8 = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 420,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.7,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Prev"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.7,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Career_Test9()));
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
