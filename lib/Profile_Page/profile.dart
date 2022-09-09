import 'package:flutter/material.dart';
import 'package:scout_school/Profile_Page/body.dart';

import '../settings_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPageUI()));
            },
          ),
        ],
      ),
      body: Profile_Body(),
    );
  }
}
