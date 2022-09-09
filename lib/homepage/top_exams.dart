import 'package:flutter/material.dart';
import 'package:scout_school/drawer/exams/mht_cet.dart';

class Top_Exams extends StatefulWidget {
  Top_Exams({Key? key}) : super(key: key);

  @override
  State<Top_Exams> createState() => _Top_ExamsState();
}

class _Top_ExamsState extends State<Top_Exams> {
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
                "Top Exams",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mht_Cet()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "MHT-CET",
                          style: TextStyle(fontSize: 16),
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
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "JEE Mains",
                          style: TextStyle(fontSize: 16),
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
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "JEE Advance",
                          style: TextStyle(fontSize: 16),
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
