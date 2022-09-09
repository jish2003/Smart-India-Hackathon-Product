import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

final GlobalKey<FormState> _form = GlobalKey<FormState>();
final TextEditingController _pass = TextEditingController();
final TextEditingController _confirmPass = TextEditingController();

class Password_Reset extends StatefulWidget {
  Password_Reset({Key? key}) : super(key: key);

  @override
  State<Password_Reset> createState() => _Password_ResetState();
}

class _Password_ResetState extends State<Password_Reset> {
  bool _isPasswordSixCharacters = false;
  bool _isHasPasswordOneNumber = false;
  bool _isHasPasswordOneSpecialCharacter = false;
  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    final specialRegex = RegExp(r'[!$@%#&]');
    setState(() {
      _isPasswordSixCharacters = false;
      if (password.length >= 6) _isPasswordSixCharacters = true;

      _isHasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _isHasPasswordOneNumber = true;

      _isHasPasswordOneSpecialCharacter = false;
      if (specialRegex.hasMatch(password))
        _isHasPasswordOneSpecialCharacter = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 8),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Create A New Password",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "The password must be at least 6 characters and should include a combination of numbers, letters and special characters (\!\$\@\%\#\&)",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 20, 40, 15),
                        child: TextFormField(
                          controller: _pass,
                          validator: (val) {
                            if (val!.isEmpty) return 'Empty';
                            return null;
                          },
                          onChanged: (password) => onPasswordChanged(password),
                          decoration: InputDecoration(
                            hintText: "New password",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.blue), // Borderside
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.all(20),
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: _isPasswordSixCharacters
                                        ? Colors.green
                                        : Colors.transparent,
                                    border: _isPasswordSixCharacters
                                        ? Border.all(color: Colors.transparent)
                                        : Border.all(
                                            color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Contains at least 6 characters"),
                              )
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: _isHasPasswordOneNumber
                                        ? Colors.green
                                        : Colors.transparent,
                                    border: _isHasPasswordOneNumber
                                        ? Border.all(color: Colors.transparent)
                                        : Border.all(
                                            color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Contains at least 1 number"),
                              )
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: _isHasPasswordOneSpecialCharacter
                                        ? Colors.green
                                        : Colors.transparent,
                                    border: _isHasPasswordOneSpecialCharacter
                                        ? Border.all(color: Colors.transparent)
                                        : Border.all(
                                            color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    "Contains at least 1 special character"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 20),
                        child: TextFormField(
                          controller: _confirmPass,
                          validator: (val) {
                            if (val!.isEmpty) return 'Empty';
                            if (val != _pass.text) return 'Not Match';
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "New password, again",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.blue), // Borderside
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 50,
                        width: 160,
                        child: RaisedButton(
                          onPressed: () {
                            if (_pass.text == _confirmPass.text) {
                              showSuccessResetPassword(context);
                            } else {
                              showUnSuccessResetPassword(context);
                            }
                          },
                          child: Text(
                            "Reset Password",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          color: Colors.blue,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showSuccessResetPassword(context) {
    MotionToast.success(
      description: Text("Password Reset Successfully"),
      title: Text(
        "Success",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ).show(context);
  }

  void showUnSuccessResetPassword(context) {
    MotionToast.error(
      description: Text("Password Reset Failed"),
      title: Text(
        "Failed",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ).show(context);
  }
}
