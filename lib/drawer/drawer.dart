import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/College_predictor/predictor_input.dart';
import 'package:scout_school/Feedback/feedback.dart';
import 'package:scout_school/drawer/About_Us.dart';
import 'package:scout_school/drawer/career_test/career_test.dart';
import 'package:scout_school/drawer/colleges_by_specialization.dart';
import 'package:scout_school/drawer/courses_BE_BTech.dart';
import 'package:scout_school/drawer/dashboard/screens/dashboard_screen.dart';
import 'package:scout_school/drawer/exams/mht_cet.dart';
import 'package:scout_school/drawer/mooc_courses_main.dart';
import 'package:scout_school/drawer/news/news_card.dart';
import 'package:scout_school/drawer/news/news_page.dart';
import 'package:scout_school/drawer/ranked_prediction/ranked_predictor_input.dart';
import 'package:scout_school/drawer/scholarship.dart';
import 'package:scout_school/notification/notification_page.dart';
import 'package:scout_school/wishlist.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class Drawer_main extends StatefulWidget {
  Drawer_main({Key? key}) : super(key: key);

  @override
  State<Drawer_main> createState() => _Drawer_mainState();
}

class _Drawer_mainState extends State<Drawer_main> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MultiLevelDrawer(
          header: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/VPKBIET_logo.jpeg",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("HEllooo")
                ],
              ),
            ),
          ),
          children: [
            MLMenuItem(
                leading: Icon(Icons.star_border_outlined),
                content: Text("   Wishlist"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishlistPage()));
                }),
            MLMenuItem(
                leading: Icon(Icons.notifications_active_outlined),
                content: Text("   Notifications"),
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Notification_page()));
                }),
            MLMenuItem(
                content: Text("   Career Test"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Career_Test()));
                }),
            MLMenuItem(
                content: Text("   Dashboard"),
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()));
                }),
            MLMenuItem(
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: Text("B.E/B.Tech"),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Diff_Betwn_BE_BTech()));
                      }),
                  MLSubmenu(submenuContent: Text("M.E/M.Tech"), onClick: () {}),
                ],
                content: Text("   Courses"),
                onClick: () {}),
            MLMenuItem(
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: Text("MHT-CET"),
                      onClick: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mht_Cet()));
                      }),
                  MLSubmenu(submenuContent: Text("JEE-Mains"), onClick: () {}),
                  MLSubmenu(
                      submenuContent: Text("JEE-Advanced"), onClick: () {}),
                ],
                content: Text("   Exams"),
                onClick: () {}),
            MLMenuItem(
                content: Text("   College Predictor"),
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CollegePredictor()));
                }),
            MLMenuItem(
                content: Text("   Rank Predictor"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RankPredictor()));
                }),
            MLMenuItem(
                content: Text("   Scholarship"),
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scholarship_page()));
                }),
            MLMenuItem(
                content: Text("   MOOC Courses"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mooc_Page()));
                }),
            MLMenuItem(
                trailing: Icon(Icons.arrow_right),
                subMenuItems: [
                  MLSubmenu(
                      submenuContent: Text("Computer Engineering"),
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CollegeBySpecialisation()));
                      }),
                  MLSubmenu(
                      submenuContent: Text("Information Technology"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent:
                          Text("Artificial Intelligence and Data Science"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: Text("Mechanical Engineering"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent: Text("Civil Engineering"),
                      onClick: () {}),
                  MLSubmenu(
                      submenuContent:
                          Text("Electronics and \nTelecommunication"),
                      onClick: () {}),
                ],
                content: Text("   Colleges By\n   Specialization"),
                onClick: () {}),
            MLMenuItem(
                content: Text("   News"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewsPage()));
                }),
            MLMenuItem(
                content: Text("   About Us"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About_Us_Page()));
                }),
            MLMenuItem(
                content: Text("   Feedback"),
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Feedback_form()));
                }),
            MLMenuItem(
                leading: Icon(Icons.logout),
                content: Text("   Sign Out"),
                onClick: () {
                  FirebaseAuth.instance.signOut();
                }),
            MLMenuItem(content: Text("©Copyrights Claimed"), onClick: () {}),
          ],
        ),
      ],
    );
  }
}
