import 'package:flutter/material.dart';
import 'package:scout_school/forgot_password/email_input.dart';
import 'package:scout_school/forgot_password/mobile_input.dart';

class forgotApp extends StatelessWidget {
  const forgotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Container(
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
                      Icons.lock,
                      size: 70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
                  child: Container(
                    child: Text(
                      "Trouble with logging in?",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
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
                        "Choose the verification mode through which you will receive an OTP.",
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
                        width: 200,
                        height: 50,
                        // color: Colors.purple,
                        child: RaisedButton(
                          color: Color.fromARGB(179, 65, 163, 243),
                          hoverColor: Color.fromARGB(97, 0, 0, 0),
                          elevation: 2,
                          // focusElevation: 9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Email_Input()));
                          },
                          child: Text(
                            "Email Verification",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        // color: Colors.purple,
                        child: RaisedButton(
                          color: Color.fromARGB(179, 65, 163, 243),
                          hoverColor: Color.fromARGB(97, 0, 0, 0),
                          elevation: 2,
                          // focusElevation: 9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mobile_Input()));
                          },
                          child: Text(
                            "Mobile Verification",
                            style: TextStyle(color: Colors.black, fontSize: 16),
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
    );
  }
}
