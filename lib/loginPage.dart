import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/register_app.dart';
import 'package:scout_school/forgot_password/forgot_option.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/bg.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.8),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Container(
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    shadowColor: Color.fromARGB(255, 27, 23, 108),
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.person),
                                    hintText: "Enter Username",
                                    labelText: "Username",
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                  controller: _passwordController,
                                  obscureText: !_isVisible,
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      hintText: "Enter Password",
                                      labelText: "Password",
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _isVisible = !_isVisible;
                                            });
                                          },
                                          icon: _isVisible
                                              ? Icon(
                                                  Icons.visibility,
                                                  color: Colors.blue,
                                                )
                                              : Icon(
                                                  Icons.visibility_off,
                                                  color: Colors.grey,
                                                )))),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => forgotApp()));
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 28, 99, 221)),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: RaisedButton(
                                    onPressed: () {
                                      SignIn();
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             MyHomePage()));
                                    },
                                    hoverColor: Color.fromARGB(191, 0, 0, 0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    color: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: EdgeInsets.fromLTRB(36, 2, 36, 2)),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("New User? "),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPage()));
                                      },
                                      child: Text(
                                        "Create Account",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 28, 99, 221)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                      ],
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
}
