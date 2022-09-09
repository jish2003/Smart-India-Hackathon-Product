import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scout_school/drawer/drawer.dart';
import 'package:scout_school/filter/filter_page.dart';
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/swipe/swipePageMain.dart';
import 'package:scout_school/wishlist.dart';

import 'choose_college1.dart';
import 'comparison_of_college.dart.dart';

class comparison_main_input extends StatefulWidget {
  const comparison_main_input({Key? key}) : super(key: key);

  @override
  State<comparison_main_input> createState() => _comparison_main_inputState();
}

class _comparison_main_inputState extends State<comparison_main_input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 215, 215),
      appBar: AppBar(
        title: Text(
          "Compare Colleges",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Color.fromARGB(255, 193, 227, 255),
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Compare Colleges",
                                      style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 1, 50, 1),
                                      child: Text(
                                        "Compare two or more colleges with their various specifications.",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 150,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 4),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue,
                                                        width: 2)),
                                                child: RaisedButton(
                                                    elevation: 3,
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Choose_college_1()));
                                                    },
                                                    color: Color.fromARGB(
                                                        238, 255, 255, 255),
                                                    padding:
                                                        EdgeInsets.all(30.0),
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.add,
                                                          size: 50,
                                                        ),
                                                        Text(
                                                          "College 1",
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue,
                                                        width: 2)),
                                                child: RaisedButton(
                                                  elevation: 3,
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Choose_college_1()));
                                                  },
                                                  color: Color.fromARGB(
                                                      238, 255, 255, 255),
                                                  padding: EdgeInsets.all(30.0),
                                                  child: Column(children: [
                                                    Icon(
                                                      Icons.add,
                                                      size: 50,
                                                    ),
                                                    Text(
                                                      "College 2",
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                    child: ButtonTheme(
                                      child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Colors.white)),
                                          elevation: 4,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Comparison_of_colleges()));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 4, 15, 4),
                                            child: Text(
                                              "Compare",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Card(
                        color: Color.fromARGB(255, 193, 227, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: ListView(
                                children: [
                                  //
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
                                    child: Card(
                                      elevation: 4,
                                      child: Text(
                                        "Popular Comparisons",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 324,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                              width: 300,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/VPKBIET_logo.jpeg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "Vidya Pratishthan",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Baramati",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.5",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/coep_logo.jpg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "COEP",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Pune",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.6",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    RaisedButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        elevation: 4,
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Comparison_of_colleges()));
                                                        },
                                                        child: Text(
                                                          "Compare",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors.blue)
                                                  ],
                                                ),
                                              ))),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                              width: 300,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/VPKBIET_logo.jpeg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "Vidya Pratishthan",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Baramati",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.5",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/coep_logo.jpg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "COEP",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Pune",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.6",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    RaisedButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        elevation: 4,
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Compare",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors.blue)
                                                  ],
                                                ),
                                              ))),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                              width: 300,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/VPKBIET_logo.jpeg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "Vidya Pratishthan",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Baramati",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.5",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/coep_logo.jpg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "COEP",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Pune",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.6",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    RaisedButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        elevation: 4,
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Compare",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors.blue)
                                                  ],
                                                ),
                                              ))),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                              width: 300,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/VPKBIET_logo.jpeg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "Vidya Pratishthan",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Baramati",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.5",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 250,
                                                          child: Card(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0)),
                                                            elevation: 3,
                                                            child: SizedBox(
                                                              width: 138,
                                                              child: Column(
                                                                children: [
                                                                  Card(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0)),
                                                                    elevation:
                                                                        3,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/coep_logo.jpg",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  ListTile(
                                                                    title: Text(
                                                                      "COEP",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      "Pune",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Rating: 4.6",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .star_half,
                                                                        color: Color.fromARGB(
                                                                            221,
                                                                            255,
                                                                            221,
                                                                            0),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    RaisedButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .white)),
                                                        elevation: 4,
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Comparison_of_colleges()));
                                                        },
                                                        child: Text(
                                                          "Compare",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors.blue)
                                                  ],
                                                ),
                                              ))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer_main(),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GNav(
            selectedIndex: 3,
            backgroundColor: Colors.blue,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Color.fromARGB(161, 255, 255, 255),
            gap: 10,
            padding: EdgeInsets.all(5),
            tabs: [
              GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  }), // GButton
              GButton(
                  icon: Icons.filter_alt,
                  text: 'Filters',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterChipDisplay()));
                  }),
              GButton(
                  icon: Icons.swipe,
                  text: 'Swipe Choice',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SwipePageMain()));
                  }), // // GButton
              GButton(
                icon: Icons.compare_arrows,
                text: 'Compare',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => comparison_main_input()));
                },
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Wishlist',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishlistPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
