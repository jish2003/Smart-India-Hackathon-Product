import 'dart:io';

import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:scout_school/College_predictor/college_predicted_page.dart';
import 'package:scout_school/drawer/ranked_prediction/rank_result.dart';

TextEditingController _rankcontroller = new TextEditingController();
int a = 0;

class RankPredictor extends StatefulWidget {
  RankPredictor({Key? key}) : super(key: key);

  @override
  State<RankPredictor> createState() => _RankPredictorState();
}

class _RankPredictorState extends State<RankPredictor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rank Predictor"),
      ),
      body: ListView(children: [
        SizedBox(
          height: 20,
        ),
        Card(
          elevation: 4,
          color: Color.fromARGB(255, 161, 207, 245),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: SingleChildScrollView(
            child: Column(children: [
              ChooseExam(),
              SizedBox(
                height: 40,
              ),
              PredictionData(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Rank_Result_Display()));
                      a = test3();
                    },
                    child: Text("Predict")),
              ),
            ]),
          ),
        ),
        rank_display(),
      ]),
    );
  }

  int test3() {
    double P, R, C, N;
    int A;
    N = 192036;
    // P = int.parse(stdin.readLineSync()!);
    P = double.parse(_rankcontroller.text);
    // P = 93;
    C = 100 - P;
    R = ((C * N) / 100) as double;
    A = R.toInt();
    // print(R);
    return A;
  }
}

class rank_display extends StatefulWidget {
  rank_display({Key? key}) : super(key: key);

  @override
  State<rank_display> createState() => _rank_displayState();
}

class _rank_displayState extends State<rank_display> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 8),
      child: Card(
          elevation: 4,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Predicted rank is ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  a.toString(),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}

class PredictionData extends StatefulWidget {
  PredictionData({Key? key}) : super(key: key);

  @override
  State<PredictionData> createState() => _PredictionDataState();
}

class _PredictionDataState extends State<PredictionData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Enter Exam Score/Percentile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Enter the maximum of MHT_CET Percentile or Score from June/July 2022 exam to predict your MHT_CET 2022 Rank",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              child: Column(
                children: [
                  Text("Enter your Percentile",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: TextField(
                      controller: _rankcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Percentile',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChooseExam extends StatelessWidget {
  const ChooseExam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 10),
          child: Text("Choose the Exam",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
            width: 210,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: AwesomeDropDown(
                dropDownList: ["MHT_CET", "JEE Mains", "JEE Advance"],
              ),
            )),
      ],
    );
  }
}
