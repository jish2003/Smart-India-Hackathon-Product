import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question8.dart';

String? ques7;

class Career_Test7 extends StatefulWidget {
  Career_Test7({Key? key}) : super(key: key);

  @override
  State<Career_Test7> createState() => _Career_Test7State();
}

class _Career_Test7State extends State<Career_Test7> {
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
                    "Q7. When a TV or fridge or washing machine gets damaged in your home, and if someone comes to repair it, do you closely watch the mechanic working on it?")),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("I keenly observe "),
                      value: "male",
                      groupValue: ques7,
                      onChanged: (value) {
                        setState(() {
                          ques7 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Yes at times i do"),
                      value: "female",
                      groupValue: ques7,
                      onChanged: (value) {
                        setState(() {
                          ques7 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("No i dont like it."),
                      value: "other",
                      groupValue: ques7,
                      onChanged: (value) {
                        setState(() {
                          ques7 = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 410,
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
                              builder: (context) => Career_Test8()));
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
