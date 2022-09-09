import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:login_page/forgot_password/email_otp.dart';
import 'package:email_auth/email_auth.dart';
// import 'package:login_page/loginPage.dart';
import 'package:scout_school/loginPage.dart';

class Email_Input extends StatefulWidget {
  const Email_Input({Key? key}) : super(key: key);

  @override
  State<Email_Input> createState() => _Email_InputState();
}

class _Email_InputState extends State<Email_Input> {
  // final TextEditingController _emailController = TextEditingController();

  // void sendOTP() async {
  //   // EmailAuth.sessionName = "Test Session";
  //   // var res = await EmailAuth.sendOtp(recieverMail: _emailController.text);

  //   EmailAuth emailAuth = new EmailAuth(sessionName: " Authentication");
  //   var res = await emailAuth.sendOtp(
  //       recipientMail: _emailController.value.text, otpLength: 4);
  //   if (res) {
  //     print("OTP Sent");
  //   } else {
  //     print("We could not sent the OTP");
  //   }
  // }

  final _emailController = TextEditingController();

  void dispose() {
    _emailController.dispose();
  }

  Future resetPass() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
                'password reset link send ,plz check your email spam section'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Verification"),
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
                        Icons.email_outlined,
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
                          "Enter your registered email address and we'll send you an OTP to get back into your account",
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
                            child: TextField(
                                controller: _emailController,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Email",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.8), // Textstyle
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

                            onPressed: () => {
                              // sendOTP(),

                              Future.delayed(const Duration(milliseconds: 5000),
                                  () {
                                // Here you can write your code
                                resetPass();

                                setState(() {
                                  // Here you can write your code for open new view
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginPage()));
                                });
                              }),
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
