import 'package:flutter/material.dart';

class Diff_Betwn_BE_BTech extends StatefulWidget {
  Diff_Betwn_BE_BTech({Key? key}) : super(key: key);

  @override
  State<Diff_Betwn_BE_BTech> createState() => _Diff_Betwn_BE_BTechState();
}

class _Diff_Betwn_BE_BTechState extends State<Diff_Betwn_BE_BTech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        color: Color.fromARGB(255, 223, 223, 223),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(4, 10, 4, 0),
                child: Container(
                  height: 80,
                  child: Card(
                    color: Color.fromARGB(255, 215, 236, 254),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Engineering Fields and Courses",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 7,
            ),
            Divider(
              thickness: 2,
              // color: Color.fromARGB(255, 223, 223, 223),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                elevation: 2,
                color: Color.fromARGB(255, 215, 236, 254),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "Engineering is a stream of education that involves the application of Science, Technology, and Mathematics to innovate, design, develop and maintain machines, structures, software, hardware, and systems & processes. This field offers a range of career opportunities across all industries, making it one of the most sought-after courses pursued by students after Class 12, especially those from the Science stream.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                wordSpacing: 6,
                                height: 1.4,
                                backgroundColor: Colors.white,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Engineering is a broad discipline that is often broken down into severalsub-disciplines. Although an engineer will usually be trained in specific discipline, he or she may become multi-disciplined through experience. Engineering is often characterized as having four main branches:",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                wordSpacing: 6,
                                height: 1.4,
                                backgroundColor: Colors.white,
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  size: 15,
                                ),
                              ),
                              Text("Chemical Engineering",
                                  style: TextStyle(
                                    wordSpacing: 6,
                                    fontSize: 17,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  size: 15,
                                ),
                              ),
                              Text("Civil Engineering",
                                  style: TextStyle(
                                    wordSpacing: 6,
                                    fontSize: 17,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  size: 15,
                                ),
                              ),
                              Text("Electrical Engineering",
                                  style: TextStyle(
                                    wordSpacing: 6,
                                    fontSize: 17,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  size: 15,
                                ),
                              ),
                              Text("Mechanical Engineering",
                                  style: TextStyle(
                                    wordSpacing: 6,
                                    fontSize: 17,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                              "Top 5 BTech Engineering Colleges",
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
                                        "assets/IITB_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "IIT-Bombay",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Mumbai, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 3",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/ICT_mumbai_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "ICT-Mumbai",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Mumbai, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 18",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/VNIT_nagpur_image.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "VNIT-Nagpur",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Nagpur, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 27",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/COEP_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Coep",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 50",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/DIAT_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "DIAT-Pune",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 63",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
                    ]),
                  )),
                ],
              ),
            ),
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
                              "Top 5 BE Colleges",
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
                                        "assets/VIT_pune_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            9, 0, 9, 0),
                                        child: Text(
                                          "(VIT)-Vishwakarma Institute of Technology",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 122",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/PICT_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "PICT, Pune",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking  201",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/singhgad_pune_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            9, 0, 9, 0),
                                        child: Text(
                                          "SCOE-Sinhgad College of Engineering",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 153",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/MIT_BE_Pune_Image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "MIT - Maharashtra Institute Of Technology",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 138",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
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
                                        "assets/DY_Patil_pimpri_image.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "D.Y.Patil College of Engineering",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "Pune, Maharashtra",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "NIRF Ranking 196",
                                              style: TextStyle(
                                                  fontSize: 13.5,
                                                  color: Colors.black54),
                                            )
                                          ],
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
                                )
                              ],
                            )),
                      ),
                    ]),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 215, 236, 254),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 350,
                          color: Colors.white,
                          child: Text(
                            "Difference Between BTech and BE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        color: Color.fromARGB(255, 211, 211, 211),
                        child: Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10)),
                          children: [
                            TableRow(
                              decoration: BoxDecoration(color: Colors.white),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BTech",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BE",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BTech is a skill-based course",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BE is a knowledge-based course",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(color: Colors.white),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "More than the theoretical aspects, the main focus is on practical applications",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "The main focus is on understanding the fundamentals and gaining theoretical knowledge. ",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "For B.Tech (Bachelor of Technology) curriculum, internships and industrial visits are mandatory for the curriculum.",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "For B.E. (Bachelor of Engineering) curriculum internships and industrial visits may be an essential part of the curriculum.",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(color: Colors.white),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "B. Tech (Bachelor of Technology programs are usually application and skill-based courses. Their prime focus is on making the student understand the technology behind the working of gadgets and modify or enhance their quality of working.",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "The main focus of the B.E. (Bachelor of Engineering Programs is to equip the student with the theoretical knowledge needed to innovate technology and also invent some new technical gadgets.",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //-------------------------------------------------------------------------------------------------------------------------
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 215, 236, 254),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Container(
                          width: 300,
                          child: Card(
                            elevation: 3,
                            child: Text(
                              "Average Fees for BTech",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          child: Card(
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "BTech in Maharashtra is expensive as approximately 60% of the colleges have course/annual fees ranging from Rs 5-10 lakh.",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Container(
                          width: 300,
                          child: Card(
                            elevation: 3,
                            child: Text("Average Fees for BE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          child: Card(
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Total fees of BE courses ranges from Rs 2.50 lakhs to 5 lakhs",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
