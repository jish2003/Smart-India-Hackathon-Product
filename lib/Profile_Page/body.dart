import 'package:flutter/material.dart';
import 'package:scout_school/Profile_Page/demo.dart';

class Profile_Body extends StatefulWidget {
  const Profile_Body({Key? key}) : super(key: key);

  @override
  State<Profile_Body> createState() => _Profile_BodyState();
}

class _Profile_BodyState extends State<Profile_Body> {
  late String birthDateInString;
  late DateTime birthDate;
  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();
  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      selectableDayPredicate: (DateTime val) =>
          val.weekday == 6 || val.weekday == 7 ? false : true,
    );
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      // leading: IconButton(
      //   icon: Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      //   onPressed: () {},
      // ),
      // actions: [
      //   IconButton(
      //     icon: Icon(
      //       Icons.settings,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      // ],
      // ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 25, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Demo()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/maithili.jpeg'))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  color: Colors.blue),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 3),
                        labelText: "Full Name",
                        labelStyle: (TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Name",
                        hintStyle: (TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Color.fromARGB(114, 0, 0, 0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 3),
                        labelStyle: (TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                        labelText: "Email",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "xyz@gmail.com",
                        hintStyle: (TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(114, 0, 0, 0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 3),
                        labelStyle: (TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                        labelText: "Phone Number",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "99xxxxxxxx",
                        hintStyle: (TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(114, 0, 0, 0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on_outlined,
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 3),
                        labelStyle: (TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                        labelText: "City",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Baramati",
                        hintStyle: (TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Color.fromARGB(114, 0, 0, 0)))),
                  ),
                ),
                TextField(
                  readOnly: true,
                  onTap: () {
                    setState(() {
                      _selectDate(context);
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.date_range, color: Colors.black),
                    hintText: (_date.toString()),
                    //hintStyle: (TextStyle(fontWeight: FontWeight.bold)),
                    labelText: "Enter Birthdate",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 14, letterSpacing: 2.2),
                        )),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 14, letterSpacing: 2.2),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
