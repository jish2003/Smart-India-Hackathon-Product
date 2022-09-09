import 'package:flutter/material.dart';

class Top_cities extends StatefulWidget {
  Top_cities({Key? key}) : super(key: key);

  @override
  State<Top_cities> createState() => _Top_citiesState();
}

class _Top_citiesState extends State<Top_cities> {
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
                          "Top Cities",
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
                                      "assets/delhi.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Delhi",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 12, 5, 5),
                                      child: Text(
                                        "Click on Explore to view the top Colleges in this city",
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
                                      "assets/hyderabad.jpg",
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
                                        "Hyderabad",
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
                                        "Click on Explore to view the top Colleges in this city",
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
                                height: 17,
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
                                      "assets/bengaluru.jpg",
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
                                        "Bengaluru",
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
                                        "Click on Explore to view the top Colleges in this city",
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
                                height: 17,
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
                                      "assets/coimbatore.jpg",
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
                                        "Coimbatore",
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
                                        "Click on Explore to view the top Colleges in this city",
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
                                height: 15,
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
                                      "assets/pune.jpg",
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
                                        "Pune",
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
                                        "Click on Explore to view the top Colleges in this city",
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
