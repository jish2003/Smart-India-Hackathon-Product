import 'package:flutter/cupertino.dart';

class User {
  late final String name;
  final String Nacc;
  // final int mutualFriends;
  // final int age;
  final String imgUrl;
  final String status;
  // final String bio;
  bool isLiked;
  bool isSwipedOff;

  User({
    required this.Nacc,
    // @required this.mutualFriends,
    required this.name,
    // @required this.age,
    required this.imgUrl,
    required this.status,
    // @required this.bio,
    this.isLiked = false,
    this.isSwipedOff = false,
    //  SingleChildScrollView child,
  });
}
