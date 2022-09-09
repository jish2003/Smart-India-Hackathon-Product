import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scout_school/Chatbot/Messages.dart';
import 'package:scout_school/Chatbot/chatbot_main.dart';
import 'package:scout_school/Profile_Page/profile.dart';
import 'package:scout_school/comparison/comparison_main_input.dart';
import 'package:scout_school/drawer/drawer.dart';
import 'package:scout_school/drawer/ranked_prediction/ranked_predictor_input.dart';
import 'package:scout_school/filter/filter_page.dart';
import 'package:scout_school/homepage/RecentArticle.dart';
import 'package:scout_school/homepage/SearchBar.dart';
import 'package:scout_school/homepage/TopColleges.dart';
import 'package:scout_school/homepage/top_cities.dart';
import 'package:scout_school/homepage/top_courses.dart';
import 'package:scout_school/homepage/top_exams.dart';
import 'package:scout_school/homepage/special_tools.dart';
import 'package:scout_school/notes/notes_homePage.dart';
import 'package:scout_school/notification/notification_page.dart';
import 'package:scout_school/swipe/page/home_page.dart';
import 'package:scout_school/swipe/swipePageMain.dart';
import 'package:scout_school/wishlist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        title: Text('Scout School'),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notes_HomePage()));
                  },
                  icon: Icon(Icons.note_alt),
                  iconSize: 25,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 1.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notification_page()));
                  },
                  icon: Icon(Icons.notifications),
                  iconSize: 25,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 1.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  icon: Icon(Icons.account_circle_sharp),
                  iconSize: 25,
                ),
              )),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 216, 216),
          // gradient: LinearGradient(
          //     colors: [Color.fromARGB(255, 209, 149, 220), Color.fromARGB(255, 180, 110, 110)]),
          // borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  SearchBar(),

                  RecentArticles(),

                  SizedBox(
                    height: 20,
                  ),
                  // SlidingBar(),

                  TopColleges(),

                  SizedBox(
                    height: 20.0,
                  ),

                  Top_Courses(),

                  SizedBox(
                    height: 20.0,
                  ),

                  Top_cities(),

                  SizedBox(
                    height: 10,
                  ),

                  Top_Exams(),
                  SizedBox(
                    height: 10,
                  ),

                  Special_tools(),
                  SizedBox(
                    height: 20,
                  ),
                  // chatbot
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chatbot_main()));
        },
        child: Icon(Icons.chat),
      ),
      drawer: Drawer_main(),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GNav(
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
