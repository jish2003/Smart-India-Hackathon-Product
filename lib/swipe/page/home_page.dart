import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:scout_school/comparison/comparison_main_input.dart';
import 'package:scout_school/drawer/drawer.dart';
import 'package:scout_school/filter/filter_page.dart';
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/swipe/data/users.dart';
import 'package:scout_school/swipe/swipePageMain.dart';
import 'package:scout_school/wishlist.dart';
// import 'package:college_clone/data/users.dart';
// import 'package:college_clone/model/user.dart';
// import 'package:college_clone/provider/feedback_position_provider.dart';
// import 'package:college_clone/widget/bottom_buttons_widget.dart';
// import 'package:college_clone/widget/user_card_widget.dart';

import '../model/user.dart';
import '../provider/feedback_position_provider.dart';
import '../widget/user_card_widget.dart';

class Swipe_HomePage extends StatefulWidget {
  @override
  Swipe_HomePageState createState() => Swipe_HomePageState();
}

class Swipe_HomePageState extends State<Swipe_HomePage> {
  final List<User> users = dummyUsers;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Swipe to Choose"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              users.isEmpty
                  ? const Text('No more colleges')
                  : Stack(children: users.map(buildUser).toList()),
              Expanded(child: Container()),
              // const BottomButtonsWidget()
            ],
          ),
        ),
        drawer: Drawer_main(),
        bottomNavigationBar: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GNav(
              selectedIndex: 2,
              backgroundColor: Colors.blue,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Color.fromARGB(161, 255, 255, 255),
              gap: 10,
              padding: EdgeInsets.all(5),
              tabs: [
                GButton(
                    active: false,
                    icon: Icons.home,
                    text: 'Home',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }), // GButton
                GButton(
                    active: false,
                    icon: Icons.filter_alt,
                    text: 'Filters',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterChipDisplay()));
                    }),
                GButton(
                    active: true,
                    icon: Icons.swipe,
                    text: 'Swipe Choice',
                    onPressed: () {}), // // GButton
                GButton(
                  active: false,
                  icon: Icons.compare_arrows,
                  text: 'Compare',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => comparison_main_input()));
                  },
                ),
                GButton(
                  active: false,
                  icon: Icons.favorite,
                  text: 'Wishlist',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WishlistPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildAppBar() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(Icons.chat, color: Colors.grey),
          SizedBox(width: 16),
        ],
        leading: const Icon(Icons.person, color: Colors.grey),
        title: const FaIcon(FontAwesomeIcons.fire, color: Colors.deepOrange),
      );

  Widget buildUser(User user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;

    return Listener(
      onPointerMove: (pointerEvent) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.updatePosition(pointerEvent.localDelta.dx);
      },
      onPointerCancel: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      onPointerUp: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      child: Draggable(
        child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => onDragEnd(details, user),
      ),
    );
  }

  void onDragEnd(DraggableDetails details, User user) {
    const minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
    }

    setState(() => users.remove(user));
  }
}
