import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question3.dart';

String? ques2;

class Career_Test2 extends StatefulWidget {
  Career_Test2({Key? key}) : super(key: key);

  @override
  State<Career_Test2> createState() => _Career_Test2State();
}

class _Career_Test2State extends State<Career_Test2> {
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
                    "Q2. Would you prefer to sit in one place and engage in intellectual work?",
                    style: TextStyle(fontSize: 16.5))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text(
                          "No, I cant sit at one place and do intellectual work."),
                      value: "male",
                      groupValue: ques2,
                      onChanged: (value) {
                        setState(() {
                          ques2 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("I can do it ocassionlly"),
                      value: "female",
                      groupValue: ques2,
                      onChanged: (value) {
                        setState(() {
                          ques2 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(
                          "Yes, I would prefer to sit at one place and do intellectual work."),
                      value: "other",
                      groupValue: ques2,
                      onChanged: (value) {
                        setState(() {
                          ques2 = value.toString();
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
                              builder: (context) => Career_Test3()));
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
