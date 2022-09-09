import 'package:flutter/material.dart';
import 'package:scout_school/college_main_page/college_main_page.dart';

class TopColleges extends StatelessWidget {
  const TopColleges({Key? key}) : super(key: key);

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
                          "Top Colleges",
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
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UserProfilePage_main()));
                                  },
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
        )
      ],
    );

    // return Padding(
    //   padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0),
    //   child: Container(
    //     // recent articles view
    //     height: 200,
    //     decoration: BoxDecoration(
    //       color: Color.fromARGB(255, 60, 60, 60),
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.all(6.0),
    //       child: ListView(
    //         scrollDirection: Axis.horizontal,
    //         children: <Widget>[
    //           Card(
    //               // width: 380,
    //               color: Colors.blueGrey[300],
    //               child: Column(
    //                 children: [
    //                   Expanded(
    //                     child: Image(
    //                       image: AssetImage('assets/images/dj_sangavi.jpg'),
    //                     ),
    //                   ),
    //                   Text(' DJ Sanghvi College of Engineering'),
    //                   // Text('Address-Pune Contact No. - 7*******67')
    //                 ],
    //               )

    //               // borderOnForeground: true,
    //               ),
    //           Card(
    //               // width: 380,
    //               color: Colors.blueGrey[300],
    //               child: Column(
    //                 children: [
    //                   Expanded(
    //                     child: Image(
    //                       image: AssetImage('assets/images/walchand.jpg'),
    //                     ),
    //                   ),
    //                   Text('Walchand_College_of_Engineering'),
    //                 ],
    //               )

    //               // borderOnForeground: true,
    //               ),
    //           Card(
    //               // width: 380,
    //               color: Colors.blueGrey[300],
    //               child: Column(
    //                 children: [
    //                   Expanded(
    //                     child: Image(
    //                       image: AssetImage('assets/images/mit-pune.jpg'),
    //                     ),
    //                   ),
    //                   Text('Mit,Pune'),
    //                 ],
    //               )

    //               // borderOnForeground: true,
    //               ),
    //           Card(
    //               // width: 380,
    //               color: Colors.blueGrey[300],
    //               child: Column(
    //                 children: [
    //                   Expanded(
    //                     child: Image(
    //                       image: AssetImage('assets/images/vit_pune.jpg'),
    //                     ),
    //                   ),
    //                   Text('Vishwakarma Institute Of Technology'),
    //                 ],
    //               )

    //               // borderOnForeground: true,
    //               ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
