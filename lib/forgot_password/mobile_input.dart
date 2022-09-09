import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scout_school/forgot_password/mobile_otp.dart';

class Mobile_Input extends StatefulWidget {
  const Mobile_Input({Key? key}) : super(key: key);

  @override
  State<Mobile_Input> createState() => _Mobile_InputState();
}

class _Mobile_InputState extends State<Mobile_Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Verification"),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.grey[200],
            height: MediaQuery.of(context).size.height,
            child: Card(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: CircleAvatar(
                      // minRadius: 25,
                      radius: 45,
                      child: Icon(
                        Icons.sms_outlined,
                        size: 70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
                    child: Container(
                      child: Text(
                        "Trouble with logging in?",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 10, 1, 5),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                        child: Text(
                          "Enter your registered mobile number and we'll send you an OTP to get back into your account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 350,
                            height: 50,
                            // color: Colors.purple,
                            child: TextFormField(
                                style: TextStyle(fontSize: 19),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  hintText: "Enter Your Mobile Number",
                                  hintStyle: TextStyle(
                                      letterSpacing: 0.2), // Textstyle
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.blue), // Borderside
                                  ), // OutlineInput Border
                                ))),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          // color: Colors.purple,
                          child: RaisedButton(
                            color: Color.fromARGB(179, 65, 163, 243),
                            hoverColor: Color.fromARGB(97, 0, 0, 0),
                            elevation: 3,
                            // focusElevation: 9,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),

                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mobile_Otp()));
                            },
                            child: Text(
                              "Verify",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
