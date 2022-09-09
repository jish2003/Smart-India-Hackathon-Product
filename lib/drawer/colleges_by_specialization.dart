import 'package:flutter/material.dart';
import 'dart:ui';

class CollegeBySpecialisation extends StatefulWidget {
  CollegeBySpecialisation({Key? key}) : super(key: key);

  @override
  State<CollegeBySpecialisation> createState() =>
      _CollegeBySpecialisationState();
}

class _CollegeBySpecialisationState extends State<CollegeBySpecialisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Engineering Colleges  "),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Following are the most popular Computer Engineering Colleges in Maharashtra. Learn more about these Computer Engineering colleges",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              College_Card(),
              SizedBox(
                height: 5,
              ),
              College_Card(),
              SizedBox(
                height: 5,
              ),
              College_Card(),
            ],
          )
        ],
      ),
    );
  }
}

class College_Card extends StatelessWidget {
  const College_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/VPKBIET_logo.jpeg"),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 108,
                //width: 280,
                child: Column(
                  children: [
                    Text(
                      "Vidya Pratishthan's Kamal Nayan Bajaj College of Engineering",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 18,
                        ),
                        Text("Vidya Nagri, Baramati")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Computer Engineering",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "(60 Seats)",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Rating 4.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(221, 255, 221, 0),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(221, 255, 221, 0),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(221, 255, 221, 0),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(221, 255, 221, 0),
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Color.fromARGB(221, 255, 221, 0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "Total Fees",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text("\u{20B9} 50K - 1L"),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Ranking",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Text("NAAC Grade 'A'")
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Explore",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          )
        ],
      ),
    );
  }
}
