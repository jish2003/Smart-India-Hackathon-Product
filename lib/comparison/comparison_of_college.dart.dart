//import 'dart:html';

import 'package:flutter/material.dart';

class Comparison_of_colleges extends StatefulWidget {
  Comparison_of_colleges({Key? key}) : super(key: key);

  @override
  State<Comparison_of_colleges> createState() => _Comparison_of_collegesState();
}

class _Comparison_of_collegesState extends State<Comparison_of_colleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comparison"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      // height: 1400,
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(4),
                          1: FlexColumnWidth(3),
                          2: FlexColumnWidth(3),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                              decoration: BoxDecoration(color: Colors.white),
                              children: [
                                Container(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            style: BorderStyle.solid,
                                            width: 1.5,
                                            color: Color.fromRGBO(
                                                101, 181, 255, 0.435))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/VPKBIET_logo.jpeg",
                                          height: 100,
                                        ),
                                        Text(
                                          "Vidya Pratishthan's Kamal Nayan Bajaj Institute of Engineering and Technology",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_pin,
                                                  size: 15,
                                                ),
                                                Text(
                                                  "Baramati,",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Maharashtra",
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            style: BorderStyle.solid,
                                            width: 1.5,
                                            color: Color.fromARGB(
                                                111, 101, 181, 255))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/coep_logo.jpg",
                                          fit: BoxFit.cover,
                                          height: 100,
                                        ),
                                        Text(
                                          "College of Engineering Pune",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_pin,
                                                  size: 15,
                                                ),
                                                Text(
                                                  "Pune,",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Maharashtra",
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                          // TableRow(
                          //     decoration: BoxDecoration(color: Colors.white),
                          //     children: [
                          //       Text("JISHANNNNNN"),
                          //       Text("JISHANNNNNN"),
                          //       Text("JISHANNNNNN"),
                          //     ]),

                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "Name of Institute",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Vidya Pratishtan's Kamalnayan Bajaj Institute of Engineering and Technology",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("College of Engineering Pune"),
                            ),
                          ]),
                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "College Rankings",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "NAAC Score",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Grade: A | CGPA: 3.12/4"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Grade: B+ | CGPA: 2.71/4"),
                            ),
                          ]),

                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "College Placement",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Median Salary",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("B.E /B.Tech 2.40 Lakhs"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("B.E /B.Tech 7 Lakhs"),
                            ),
                          ]),

                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "College Details",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "Estd Date",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("2000"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("1983"),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "Ownership",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Private"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Private"),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "Campus Size",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("17 (Acres)"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("5 (Acres)"),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "Total Students Intake",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("492"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("865"),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Text(
                                "Total Faculty",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Text("83"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Text("115"),
                            ),
                          ]),
                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "College Facilities",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(),
                                Container(),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Boys Hostel",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Icon(Icons.boy),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Girls Hostel",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Icon(Icons.girl),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Wi-Fi Campus",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Icon(
                                        Icons.wifi,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.close),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Gym",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 58),
                                    child: Icon(
                                      Icons.sports_gymnastics,
                                      size: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Cafeteria",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Icon(
                                      Icons.restaurant,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Library",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Icon(
                                      Icons.library_books,
                                      size: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Hospital/\nMedical",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 27),
                                      child: Icon(
                                        Icons.local_hospital,
                                        size: 17,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(Icons.check),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Transport",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 22),
                                      child: Icon(
                                        Icons.emoji_transportation,
                                        size: 20,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 20),
                              child: Icon(Icons.check),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 20),
                              child: Icon(Icons.close),
                            ),
                          ]),
                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "Courses Offered",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Courses",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("B.E /B.Tech : 7 Courses"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("B.E /B.Tech : 3 Courses"),
                            ),
                          ]),
                          TableRow(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 238, 234, 234)),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 20, 0, 20),
                                  child: Text(
                                    "College Reviews",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(""),
                                Text(""),
                              ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Courses",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("4/5"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("3.7/5"),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
