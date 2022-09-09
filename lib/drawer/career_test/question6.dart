import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question7.dart';

String? ques6;

class Career_Test6 extends StatefulWidget {
  Career_Test6({Key? key}) : super(key: key);

  @override
  State<Career_Test6> createState() => _Career_Test6State();
}

class _Career_Test6State extends State<Career_Test6> {
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
              "Q6. In your childhood, did you enjoyed making the structure with blocks, cards or stand?",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("Most Often"),
                      value: "male",
                      groupValue: ques6,
                      onChanged: (value) {
                        setState(() {
                          ques6 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Not really"),
                      value: "female",
                      groupValue: ques6,
                      onChanged: (value) {
                        setState(() {
                          ques6 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Sometimes"),
                      value: "other",
                      groupValue: ques6,
                      onChanged: (value) {
                        setState(() {
                          ques6 = value.toString();
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
                              builder: (context) => Career_Test7()));
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
