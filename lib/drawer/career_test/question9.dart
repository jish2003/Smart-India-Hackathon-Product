import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/finished_test.dart';

String? ques9;

class Career_Test9 extends StatefulWidget {
  Career_Test9({Key? key}) : super(key: key);

  @override
  State<Career_Test9> createState() => _Career_Test9State();
}

class _Career_Test9State extends State<Career_Test9> {
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
              "Q9. Would you feel comfortable to sail for six months, where you get to see beautiful water bodies and clear sky.",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("Yes, I would find it thrilling"),
                      value: "male",
                      groupValue: ques9,
                      onChanged: (value) {
                        setState(() {
                          ques9 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Maybe once in my lifetime"),
                      value: "female",
                      groupValue: ques9,
                      onChanged: (value) {
                        setState(() {
                          ques9 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("I dont like travelling so much"),
                      value: "other",
                      groupValue: ques9,
                      onChanged: (value) {
                        setState(() {
                          ques9 = value.toString();
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
                              builder: (context) => Test_SuccessPage()));
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
