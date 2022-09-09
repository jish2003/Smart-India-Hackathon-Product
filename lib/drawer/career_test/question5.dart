import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question6.dart';

String? ques5;

class Career_Test5 extends StatefulWidget {
  Career_Test5({Key? key}) : super(key: key);

  @override
  State<Career_Test5> createState() => _Career_Test5State();
}

class _Career_Test5State extends State<Career_Test5> {
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
              "Q5. When you see a building, have you ever thought about how it was built?",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("Not really"),
                      value: "male",
                      groupValue: ques5,
                      onChanged: (value) {
                        setState(() {
                          ques5 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Sometimes"),
                      value: "female",
                      groupValue: ques5,
                      onChanged: (value) {
                        setState(() {
                          ques5 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Often"),
                      value: "other",
                      groupValue: ques5,
                      onChanged: (value) {
                        setState(() {
                          ques5 = value.toString();
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
                              builder: (context) => Career_Test6()));
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
