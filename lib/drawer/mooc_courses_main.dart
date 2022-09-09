import "package:flutter/material.dart";
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Mooc_Page extends StatefulWidget {
  Mooc_Page({Key? key}) : super(key: key);

  @override
  State<Mooc_Page> createState() => _Mooc_PageState();
}

class _Mooc_PageState extends State<Mooc_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOOC Courses"),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 181, 222, 255),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 3,
                    child: Container(
                      height: 150,
                      width: 380,
                      color: Color.fromARGB(47, 255, 212, 233),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Introduction to MOOC Courses",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                child: Text(
                              "A massive open online course (MOOC) is a free web-based distance learning program that is designed for large numbers of geographically dispersed students. A MOOC may be patterned on a college or university course or be less structured.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
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
                                  "Popular Courses",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Card(
                          color: Colors.grey[200],
                          child: Row(
                            children: [
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
                                                  "assets/udemy_logo.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Udemy Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.bottomCenter,
                                            child: Link(
                                                uri: Uri.parse(
                                                    'https://www.udemy.com/'),
                                                builder: (context,
                                                        followLink) =>
                                                    ElevatedButton(
                                                      onPressed: followLink,
                                                      child: Text(
                                                        "Explore",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ))

                                            // RaisedButton(
                                            //   color: Colors.blue,
                                            //   onPressed: () {},
                                            //   child: Text(
                                            //     "Explore",
                                            //     style: TextStyle(
                                            //         color: Colors.white),
                                            //   ),
                                            // ),
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
                                                  "assets/nptel_logo.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "NPTEL Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                            height: 30,
                                            width: 80,
                                            alignment: Alignment.bottomCenter,
                                            child: Link(
                                                uri: Uri.parse(
                                                    'https://nptel.ac.in/'),
                                                builder: (context,
                                                        followLink) =>
                                                    ElevatedButton(
                                                      onPressed: followLink,
                                                      child: Text(
                                                        "Explore",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )))
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
                                                  "assets/edx_logo.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "edX Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.edx.org/'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                                  "assets/udacity_logo.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "UDACITY Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.udacity.com/'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                                  "assets/khan_academy_logo.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Khan Academy Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.khanacademy.org/'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                                  "assets/coursera_logo.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Coursera Courses",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Click below for more details",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.coursera.org/'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
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
                                  "Popular Courses",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                  height: 320,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Card(
                          color: Colors.grey[200],
                          child: Row(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 3,
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 320,
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
                                                  "assets/udemy_course.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Automate the Boring Stuff with Python Programming\nUdemy Course",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "A practical programming course for office workers, academics, and administrators who want to improve their productivity.",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
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
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.udemy.com/course/automate/'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                    height: 320,
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
                                                  "assets/nptel_course.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Advanced Computer Architecture\nNPTEL Course",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "An advanced level Nptel Online courses for Computer Science that will help you understand the basics of computer organization conveniently",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://onlinecourses.nptel.ac.in/noc22_cs10/preview#:~:text=INTENDED%20AUDIENCE%3A%20Anyone%20in%20CSE,AMD%2C%20IBM%2C%20Nvidia%20etc.&text=Category%20%3A,Computer%20Science%20and%20Engineering'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                    height: 320,
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
                                                  "assets/edx_course.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Introduction to Java Programming: Writing Good Code\nedX Course",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Learn to program in an easy and interactive way and enter the fascinating world of computer science.",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.edx.org/course/introduction-to-java-programming-writing-good-code'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                    height: 320,
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
                                                  "assets/coursera_course.png"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "AI For Everyone\nCoursera Course",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "AI is not only for engineers. If you want your organization to become better at using AI, this is the course to tell everyone--especially your non-technical colleagues--to take. ",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.coursera.org/learn/ai-for-everyone'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                    height: 320,
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
                                                  "assets/udacity_course.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Become a Data Scientist\nUdacity Course",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Gain real-world data science experience with projects designed by industry experts. Build your portfolio and advance your data science career.",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          alignment: Alignment.bottomCenter,
                                          child: Link(
                                              uri: Uri.parse(
                                                  'https://www.udacity.com/course/data-scientist-nanodegree--nd025'),
                                              builder: (context, followLink) =>
                                                  ElevatedButton(
                                                    onPressed: followLink,
                                                    child: Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
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
                                    height: 320,
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
                                                  "assets/khan_academy_course.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Ancient cryptography\nKhan Academy",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Explore how we have hidden secret messages through history.",
                                                  style: TextStyle(
                                                      fontSize: 13.5,
                                                      color: Colors.black45),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 75,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 30,
                                            width: 80,
                                            child: Link(
                                                uri: Uri.parse(
                                                    'https://www.khanacademy.org/computing/computer-science/cryptography'),
                                                builder: (context,
                                                        followLink) =>
                                                    ElevatedButton(
                                                      onPressed: followLink,
                                                      child: Text(
                                                        "Explore",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
