import 'package:flutter/material.dart';
import 'package:scout_school/drawer/career_test/question4.dart';

String? ques3;

class Career_Test3 extends StatefulWidget {
  Career_Test3({Key? key}) : super(key: key);

  @override
  State<Career_Test3> createState() => _Career_Test3State();
}

class _Career_Test3State extends State<Career_Test3> {
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
              "Q3. Have you ever open your switch board and repair it ?",
              style: TextStyle(fontSize: 16.5),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("Yes, I have."),
                      value: "male",
                      groupValue: ques3,
                      onChanged: (value) {
                        setState(() {
                          ques3 = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("No, I havent."),
                      value: "female",
                      groupValue: ques3,
                      onChanged: (value) {
                        setState(() {
                          ques3 = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 470,
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
                              builder: (context) => Career_Test4()));
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
