import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/college_main_page/Courses.dart';
import 'package:scout_school/college_main_page/Gallery.dart';
import 'package:scout_school/college_main_page/about_new.dart';
import 'package:scout_school/college_main_page/college_main_page.dart';
import 'package:scout_school/college_main_page/placement/placement.dart';
import 'package:scout_school/college_main_page/ranking_page.dart';
import 'package:scout_school/college_main_page/review_page.dart';
import 'package:scout_school/college_main_page/seat_matrix_page.dart';
import 'package:url_launcher/link.dart';

import 'FeeStructure_page.dart';
import 'cut-off_page.dart';

class Scholarship_page extends StatefulWidget {
  @override
  State<Scholarship_page> createState() => _Scholarship_pageState();
}

class _Scholarship_pageState extends State<Scholarship_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatefulWidget {
  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final String _fullName = "Kamalnayan Bajaj institute of Engineering";

  final String _status = "Baramati";

  final String _bio =
      "\"Hi,COlllllllllllllllllllllllgggggggggggggggggggeeeeeeeeeeeeeeee Summmmmmmmmmmmmaryyyyyyyyyyyyy.\"";

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 2.8,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/vpkbiet_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/VPKBIET_logo.jpeg'),
            fit: BoxFit.scaleDown,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 3, left: 8.0),
      child: Text(
        _fullName,
        style: _nameTextStyle,
      ),
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //for displaying the buttons like addmission and all
          // _buildStatItem("Followers", _followers),
          // _buildStatItem("Posts", _posts),
          // _buildStatItem("Scores", _scores),
          Row(
            children: [
              TextButton.icon(
                  onPressed: null, icon: Icon(Icons.call), label: Text('Call')),
              TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.email),
                  label: Text('Email')),
              TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.favorite),
                  label: Text('like')),
              TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => UserProfilePage_main())));
                  },
                  icon: Icon(Icons.home),
                  label: Text('home')),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Get in Touch with ${_fullName.split(" ")[0]},",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("followed"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color(0xFF404A5C),
                ),
                child: Center(
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: InkWell(
              onTap: () => print("Admission"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Admission",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget InfoBar() {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(145, 75, 207, 222)),
      height: 40,
      width: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: null,
              child: Text(
                'Scholarship',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => About_Page_new())));
              },
              child: Text(
                'About',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => CutOff_Page())));
              },
              child: Text(
                'Cut-off',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Ranking_page())));
              },
              child: Text(
                'Ranking',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Courses_page())));
              },
              child: Text(
                'Courses',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SeatMatrix())));
              },
              child: Text(
                'Seat-Matrix',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Placements_page())));
              },
              child: Text(
                'Placements',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => FeeStructure())));
              },
              child: Text(
                'Fee-Structure',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Gallery_page())));
              },
              child: Text(
                'Gallery',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Reviews())));
              },
              child: Text(
                'Reviews',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget ScholarshipInfo() {
    return Container(
      height: 200,
      child: Column(children: [
        ListTile(
          title: Text(
            'Scholarship Info',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text('as per 2021'),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> scholarship =
        FirebaseFirestore.instance.collection('scholarship').snapshots();
    // bool isFee = false;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Scholarship"),
      ),
      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 6.4),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  _buildStatContainer(),
                  SizedBox(
                    height: 10,
                  ),
                  InfoBar(),
                  StreamBuilder<QuerySnapshot>(
                      stream: scholarship,
                      builder: (
                        BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot,
                      ) {
                        if (snapshot.hasError) {
                          return Text("Something went wrong");
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("Loading");
                        }
                        final data = snapshot.requireData;
                        return Container(
                            height: MediaQuery.of(context).size.height / 3,
                            child: ListView.builder(
                                itemCount: data.size,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Table(
                                          columnWidths: {
                                            0: FlexColumnWidth(10),
                                          },
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 238, 234, 234)),
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(2, 20, 0, 20),
                                                    child: Text(
                                                      "Scholarships",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship1']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship2']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship3']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship4']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship5']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship6']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship7']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship8']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship9']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship10']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship11']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship12']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship13']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship14']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Text(
                                                  "${data.docs[index]['scholarship15']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.5),
                                                ),
                                              ),
                                            ]),
                                            TableRow(children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          "More about Scholarships in this Institute"),
                                                      Link(
                                                          uri: Uri.parse(
                                                              '${data.docs[index]['link']}'),
                                                          builder: (context,
                                                                  followLink) =>
                                                              GestureDetector(
                                                                onTap:
                                                                    followLink,
                                                                child: Text(
                                                                  "${data.docs[index]['link']}",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline),
                                                                ),
                                                              )),
                                                    ],
                                                  )),
                                            ]),
                                            // TableRow(children: [
                                            //   Padding(
                                            //     padding:
                                            //         const EdgeInsets.all(20),
                                            //     child: Text(
                                            //       "Link to the college level scholarship page\n${data.docs[index]['link']}",
                                            //       style: TextStyle(
                                            //           fontWeight:
                                            //               FontWeight.bold,
                                            //           fontSize: 14.5),
                                            //     ),
                                            //   ),
                                            // ]),
                                          ]));
                                }));
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
