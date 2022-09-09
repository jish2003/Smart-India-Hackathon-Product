import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question5.dart';

String? ques4;

class Career_Test4 extends StatefulWidget {
  Career_Test4({Key? key}) : super(key: key);

  @override
  State<Career_Test4> createState() => _Career_Test4State();
}

class _Career_Test4State extends State<Career_Test4> {
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
              "Q4. Do you follow designs and models of new cars and bikes and ever thought that you could have designed it better?",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("I usually do"),
                      value: "male",
                      groupValue: ques4,
                      onChanged: (value) {
                        setState(() {
                          ques4 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Not really"),
                      value: "female",
                      groupValue: ques4,
                      onChanged: (value) {
                        setState(() {
                          ques4 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Sometimes"),
                      value: "other",
                      groupValue: ques4,
                      onChanged: (value) {
                        setState(() {
                          ques4 = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
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
                              builder: (context) => Career_Test5()));
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
