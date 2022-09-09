import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scout_school/comparison/comparison_main_input.dart';
import 'package:scout_school/drawer/drawer.dart';
import 'package:scout_school/filter/filter_result.dart';
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/swipe/swipePageMain.dart';
import 'package:scout_school/wishlist.dart';

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: Icon(
        //       FontAwesomeIcons.times,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {}),
        title: Text(
          "FILTERS",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              }),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer("Choose Specialization"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Wrap(
                    spacing: 3.0,
                    runSpacing: 3.0,
                    children: <Widget>[
                      filterChipWidget(chipName: 'Engineering'),
                      filterChipWidget(chipName: 'Law'),
                      filterChipWidget(chipName: 'Design'),
                      filterChipWidget(
                          chipName: 'Business & Managment Studies'),
                      filterChipWidget(chipName: 'Animation'),
                      filterChipWidget(chipName: 'Science'),
                      filterChipWidget(chipName: 'IT and Software'),
                      filterChipWidget(chipName: 'Arts'),
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer("Choose Engineering Courses"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Wrap(
                    spacing: 3.0,
                    runSpacing: 3.0,
                    children: <Widget>[
                      filterChipWidget(chipName: 'Computer '),
                      filterChipWidget(chipName: 'Mechanical '),
                      filterChipWidget(chipName: 'Electrical '),
                      filterChipWidget(chipName: 'Electronics'),
                      filterChipWidget(chipName: 'Civil'),
                      filterChipWidget(chipName: 'Chemical'),
                      filterChipWidget(chipName: 'Information Technology'),
                      filterChipWidget(
                          chipName: 'Artificial Intelligence & Data Science'),
                    ],
                  )),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer('Total Fees'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 3.0,
                      runSpacing: 3.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '< 1 Lakh'),
                        filterChipWidget(chipName: '1 - 2 Lakh'),
                        filterChipWidget(chipName: '2 - 3 Lakh'),
                        filterChipWidget(chipName: '3 - 4 Lakh'),
                        filterChipWidget(chipName: '4 - 5 Lakh'),
                        filterChipWidget(chipName: '> 5 Lakh'),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer('Mode of Study'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 3.0,
                      runSpacing: 3.0,
                      children: <Widget>[
                        filterChipWidget(chipName: 'Full Time'),
                        filterChipWidget(chipName: 'Part Time'),
                        filterChipWidget(chipName: 'Distance'),
                        filterChipWidget(chipName: 'Online'),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer('Rating'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 3.0,
                      runSpacing: 3.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '1-2 Star'),
                        filterChipWidget(chipName: '2-3 Star'),
                        filterChipWidget(chipName: '3-4 Star'),
                        filterChipWidget(chipName: '4-5 Star'),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _titleContainer('College Facilities'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Wrap(
                      spacing: 3.0,
                      runSpacing: 3.0,
                      children: <Widget>[
                        filterChipWidget(chipName: 'College Hostel'),
                        filterChipWidget(chipName: 'Transport Facility'),
                        filterChipWidget(chipName: 'Library'),
                        filterChipWidget(chipName: 'Playground'),
                        filterChipWidget(chipName: 'Cafeteria'),
                        filterChipWidget(chipName: 'Wi-fi Enabled Campus'),
                        filterChipWidget(chipName: 'Computer Labs'),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey,
                height: 20.0,
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: RaisedButton(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Filter_ResultPage()));
              },
              child: Container(
                // margin: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,

                child: Text(
                  "Apply Filter",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GNav(
            selectedIndex: 1,
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

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Times New Roman"),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color.fromARGB(255, 216, 222, 236),
    );
  }
}
