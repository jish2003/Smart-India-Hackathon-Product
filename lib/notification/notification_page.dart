import 'package:flutter/material.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({Key? key}) : super(key: key);

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text('Notification Page '),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Center(
            child: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "09-05-2022, BE Counselling for the session 2022.... do register for the session ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "01-06-2022 ,Coep addmission open 2022 apply now... ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "05-07-2022,VIIT ENGINEERING ADMISSION  2022: For Admission to B.E/B.Tech Degree Courses Last date for receiving completed application forms: Tuesday , August 11 ,2022 ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 11.00 AM,VELLORE INSTITUTE OF TECHNOLOGY ENGINEERING ENTRANCE EXAMINATION (VITEEE),VIT engineering entrance examination 2022 ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
