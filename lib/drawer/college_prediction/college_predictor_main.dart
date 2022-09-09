import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:scout_school/College_predictor/college_predicted_page.dart';

class CollegePredictor extends StatefulWidget {
  CollegePredictor({Key? key}) : super(key: key);

  @override
  State<CollegePredictor> createState() => _CollegePredictorState();
}

class _CollegePredictorState extends State<CollegePredictor> {
  String dropdownvalue = 'MHT_CET';

  // List of items in our dropdown menu
  var items = [
    'MHT_CET',
    'JEE_mains',
    'JEE_Advance',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("College Predictor"),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                height: 600,
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Choose Exam",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 60),
                            DropdownButton(

                                // Initial Value
                                value: dropdownvalue,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Enter Rank",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 60),
                            EnterRank(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter Category",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              // textAlign: TextAlign.left,
                            ),
                            Container(
                                child: AwesomeDropDown(
                              dropDownList: [
                                "Open",
                                "OBC",
                                "SC",
                                "ST",
                                "Other"
                              ],
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(children: [
                          Row(
                            children: [
                              Text(
                                "Gender",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GenderPickerWithImage(
                            showOtherGender: true,
                            verticalAlignedText: false,
                            selectedGender: Gender.Male,
                            selectedGenderTextStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                            unSelectedGenderTextStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                            onChanged: null,
                            equallyAligned: true,
                            animationDuration: Duration(milliseconds: 300),
                            isCircular: true,
                            // default : true,
                            opacityOfGradient: 0.4,
                            padding: const EdgeInsets.all(3),
                            size: 50, //default : 40
                          ),
                        ]),
                      ),
                      SizedBox(height: 100),
                      //predictbutton
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CollegeList()));
                        },
                        child: Text(
                          "Predict",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class EnterRank extends StatelessWidget {
  const EnterRank({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // margin: EdgeInsets.only(left: 20),
          height: 100,
          width: 150,
          color: Colors.transparent,
          child: TextField(
            decoration: InputDecoration(
              labelText: "Rank",
              hintText: "Enter your Rank",
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
