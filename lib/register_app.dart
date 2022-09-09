// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:motion_toast/motion_toast.dart';
// import 'package:scout_school/Login/registration_success.dart';
// import 'package:scout_school/loginPage.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({Key? key}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final firstNameController = TextEditingController();
//   final secondNameController = TextEditingController();
//   final emailNameController = TextEditingController();
//   final phoneNameController = TextEditingController();
//   final passwordController = TextEditingController();
//   final cpasswordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   Future signUp() async {
//     if (ispasscorrect()) {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: emailNameController.text.trim(),
//           password: passwordController.text.trim());
//     }
//   }

//   bool ispasscorrect() {
//     if (passwordController.text.trim() == cpasswordController.text.trim()) {
//       return true;
//     }

//     return false;
//   }

//   void falsePassword(context) {
//     MotionToast.error(
//       description: Text("Plz Enter the Password Correctly"),
//       title: Text(
//         "Error",
//         style: TextStyle(fontWeight: FontWeight.bold),
//       ),
//     ).show(context);
//   }

//   bool _isObsecure = true;
//   String _password = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _formKey,
//       appBar: AppBar(
//         title: Text("Register"),
//       ),
//       body: Container(
//         color: Colors.grey[400],
//         child: Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 elevation: 4,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage("assets/Scout_School_logo.jpeg"),
//                         backgroundColor: Colors.blue,
//                         radius: 80.0,
//                         child: Text(
//                           "Scout School",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Form(
//                         child: Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                               children: [
//                                 TextFormField(
//                                   controller: firstNameController,
//                                   decoration: InputDecoration(
//                                       prefixIcon: Icon(
//                                         Icons.person,
//                                         color: Colors.blue,
//                                       ),
//                                       hintText: "Enter First Name",
//                                       labelText: "First Name",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                 ),
//                                 SizedBox(
//                                   height: 9,
//                                 ),
//                                 TextFormField(
//                                   controller: secondNameController,
//                                   decoration: InputDecoration(
//                                       prefixIcon: Icon(Icons.person,
//                                           color: Colors.blue),
//                                       hintText: "Enter Last Name",
//                                       labelText: "Last Name",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                 ),
//                                 SizedBox(
//                                   height: 9,
//                                 ),
//                                 TextFormField(
//                                   controller: phoneNameController,
//                                   maxLength: 10,
//                                   decoration: InputDecoration(
//                                       prefixIcon:
//                                           Icon(Icons.phone, color: Colors.blue),
//                                       hintText: "Enter Phone Number",
//                                       labelText: "Phone Number",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                   keyboardType: TextInputType.number,
//                                   inputFormatters: [
//                                     FilteringTextInputFormatter.digitsOnly
//                                   ],
//                                 ),
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                       prefixIcon:
//                                           Icon(Icons.email, color: Colors.blue),
//                                       hintText: "Enter Email- xyz@gmail.com",
//                                       labelText: "Email",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                 ),
//                                 SizedBox(
//                                   height: 9,
//                                 ),
//                                 TextFormField(
//                                   obscureText: _isObsecure,
//                                   controller: passwordController,
//                                   decoration: InputDecoration(
//                                       prefixIcon: Icon(Icons.lock_open_outlined,
//                                           color: Colors.blue),
//                                       suffixIcon: IconButton(
//                                         icon: Icon(
//                                           _isObsecure
//                                               ? Icons.visibility
//                                               : Icons.visibility_off,
//                                         ),
//                                         onPressed: () {
//                                           setState(() {
//                                             _isObsecure = !_isObsecure;
//                                           });
//                                         },
//                                       ),
//                                       hintText: "Enter Password",
//                                       labelText: "Password",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                 ),
//                                 SizedBox(
//                                   height: 9,
//                                 ),
//                                 TextFormField(
//                                   controller: cpasswordController,
//                                   obscureText: _isObsecure,
//                                   decoration: InputDecoration(
//                                       prefixIcon: Icon(Icons.lock_outlined,
//                                           color: Colors.blue),
//                                       suffixIcon: IconButton(
//                                         icon: Icon(
//                                           _isObsecure
//                                               ? Icons.visibility
//                                               : Icons.visibility_off,
//                                         ),
//                                         onPressed: () {
//                                           setState(() {
//                                             _isObsecure = !_isObsecure;
//                                           });
//                                         },
//                                       ),
//                                       hintText: "Enter Password",
//                                       labelText: " Confirm Password",
//                                       labelStyle: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 18)),
//                                 ),
//                                 SizedBox(
//                                   height: 9,
//                                 ),
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         'Return to ',
//                                       ),
//                                       GestureDetector(
//                                         onTap: () {
//                                           Navigator.push(
//                                               context,
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       loginPage()));
//                                         },
//                                         child: Text(
//                                           'login Page',
//                                           style: TextStyle(color: Colors.blue),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ))),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: RaisedButton(
//                         elevation: 3,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15)),
//                         onPressed: () {
//                           signUp();
//                           if (ispasscorrect()) {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         Registration_SuccessPage()));
//                           } else {
//                             falsePassword(context);
//                           }
//                         },
//                         child: Text(
//                           "Register",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                               color: Colors.white),
//                         ),
//                         color: Colors.blue,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:login_page/Login/registration_success.dart';
// import 'package:login_page/loginPage.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:scout_school/Login/registration_success.dart';
import 'package:scout_school/loginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();
  final emailNameController = TextEditingController();
  final phoneNameController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isObsecure = true;
  String _password = '';

  Future signUp() async {
    if (ispassCorrect()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailNameController.text.trim(),
          password: cpasswordController.text.trim());
    }

    addUserDetails(
        firstNameController.text.trim(),
        secondNameController.text.trim(),
        emailNameController.text.trim(),
        int.parse(phoneNameController.text.trim()));
  }

  bool ispassCorrect() {
    if (passwordController.text.trim() == cpasswordController.text.trim()) {
      return true;
    }

    return false;
  }

  void falsePassword(context) {
    MotionToast.success(
      description: Text("Plz Enter the Password Correctly"),
      title: Text(
        "Error",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ).show(context);
  }

  Future addUserDetails(
      String firstName, String lastName, String email, int phoneNo) async {
    await FirebaseFirestore.instance.collection('Users').add({
      'First_Name': firstName,
      'Last_Name': lastName,
      'Phone_Number': phoneNo,
      'email': email,
    });
  }

  @override
  void dispose() {
    emailNameController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    secondNameController.dispose();
    phoneNameController.dispose();
    cpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/Scout_School_logo.jpeg"),
                        backgroundColor: Colors.blue,
                        radius: 80.0,
                        child: Text(
                          "Scout School",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Form(
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: firstNameController,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.blue,
                                      ),
                                      hintText: "Enter First Name",
                                      labelText: "First Name",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                TextFormField(
                                  controller: secondNameController,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person,
                                          color: Colors.blue),
                                      hintText: "Enter Last Name",
                                      labelText: "Last Name",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                TextFormField(
                                  controller: phoneNameController,
                                  maxLength: 10,
                                  decoration: InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.phone, color: Colors.blue),
                                      hintText: "Enter Phone Number",
                                      labelText: "Phone Number",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                                TextFormField(
                                  controller: emailNameController,
                                  decoration: InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.email, color: Colors.blue),
                                      hintText: "Enter Email- xyz@gmail.com",
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                TextFormField(
                                  obscureText: _isObsecure,
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock_open_outlined,
                                          color: Colors.blue),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isObsecure
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isObsecure = !_isObsecure;
                                          });
                                        },
                                      ),
                                      hintText: "Enter Password",
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                TextFormField(
                                  controller: cpasswordController,
                                  obscureText: _isObsecure,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock_outlined,
                                          color: Colors.blue),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isObsecure
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isObsecure = !_isObsecure;
                                          });
                                        },
                                      ),
                                      hintText: "Enter Password",
                                      labelText: " Confirm Password",
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18)),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Return to ',
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      loginPage()));
                                        },
                                        child: Text(
                                          'login Page',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          signUp();
                          if (ispassCorrect()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Registration_SuccessPage()));
                          } else {
                            falsePassword(context);
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
