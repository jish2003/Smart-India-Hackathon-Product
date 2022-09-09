import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scout_school/swipe/page/home_page.dart';
import 'package:scout_school/swipe/provider/feedback_position_provider.dart';

class SwipePageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => FeedbackPositionProvider(),
        child: MaterialApp(
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   visualDensity: VisualDensity.adaptivePlatformDensity,
          // ),
          home: Swipe_HomePage(),
        ),
      );
}
