import 'package:flutter/material.dart';

class Top_Courses extends StatefulWidget {
  Top_Courses({Key? key}) : super(key: key);

  @override
  State<Top_Courses> createState() => _Top_CoursesState();
}

class _Top_CoursesState extends State<Top_Courses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Card(
          color: Colors.grey[200],
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                  child: ListView(
                    children: [
                      Container(
                        child: Text(
                          "Top Courses",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: Container(
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    child: Card(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 220,
                          width: 240,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  child: Container(
                                    width: 240,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/comp.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Computer Engineering",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 15, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the Colleges.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ]),
                )),
                Container(
                    child: Card(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 220,
                          width: 240,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  child: Container(
                                    width: 240,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/entc.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        "Electronics & Communications Engineering",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the Colleges.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]),
                )),
                Container(
                    child: Card(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 220,
                          width: 240,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  child: Container(
                                    width: 240,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/it.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        "Information Technology Engineering",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the Colleges.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]),
                )),
                Container(
                    child: Card(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 220,
                          width: 240,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  child: Container(
                                    width: 240,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/aiml.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        "Artificial Intelligence and Machine Learning Engineering",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the Colleges.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 7.1,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]),
                )),
                Container(
                    child: Card(
                  color: Colors.grey[200],
                  child: Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 3,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 220,
                          width: 240,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  child: Container(
                                    width: 240,
                                    height: 90,
                                    child: Image.asset(
                                      "assets/mechanical.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        "Mechanical Engineering",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 15, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the Colleges.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13.5,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.bottomCenter,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]),
                )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
