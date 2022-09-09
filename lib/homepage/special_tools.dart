import 'package:flutter/material.dart';
import 'package:scout_school/Chatbot/chatbot_main.dart';
import 'package:scout_school/College_predictor/predictor_input.dart';
import 'package:scout_school/drawer/ranked_prediction/ranked_predictor_input.dart';

class Special_tools extends StatefulWidget {
  Special_tools({Key? key}) : super(key: key);

  @override
  State<Special_tools> createState() => _Special_toolsState();
}

class _Special_toolsState extends State<Special_tools> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 10,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Specials",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 87, 179, 255))),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CollegePredictor()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.assured_workload_sharp),
                            ),
                            Text(
                              "College Predictor",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 87, 179, 255))),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RankPredictor()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.bar_chart_outlined),
                            ),
                            Text(
                              "Rank Predictor",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 87, 179, 255))),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chatbot_main()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.message),
                            ),
                            Text(
                              "Chatbot",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
