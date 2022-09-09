import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:scout_school/comparison/comparison_main_input.dart';
import 'package:scout_school/filter/filter_page.dart';
import 'package:scout_school/forgot_password/forgot_option.dart';
import 'package:scout_school/homepage/HomePage.dart';
import 'package:scout_school/swipe/swipePageMain.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var num = 4;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 136, 136, 136),
        elevation: 0.0,
        title: Text('WishList',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 249, 249),
                fontWeight: FontWeight.w400,
                fontSize: 22.0)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 80,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Edit'),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.edit,
                      size: 15,
                    ),
                  ],
                ),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   color: Color.fromARGB(255, 255, 255, 255),
            //   child: TabBar(
            //     unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
            //     labelColor: Colors.blue,
            //     indicatorColor: Colors.blue,
            //     labelStyle: TextStyle(fontSize: 22.0),
            //     tabs: [
            //       Tab(text: "Cart"),
            //       Tab(text: "Applied"),
            //     ],
            //   ),
            // ),
            Container(
              color: Color.fromARGB(113, 235, 235, 235),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Text("Total Item Count $num")),
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) => ProductItem(),
                itemCount: num,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GNav(
            selectedIndex: 4,
            backgroundColor: Colors.blue,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Color.fromARGB(161, 255, 255, 255),
            gap: 10,
            padding: EdgeInsets.all(5),
            tabs: [
              GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  }), // GButton
              GButton(
                  icon: Icons.filter_alt,
                  text: 'Filters',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterChipDisplay()));
                  }),
              GButton(
                  icon: Icons.swipe,
                  text: 'Swipe Choice',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SwipePageMain()));
                  }), // // GButton
              GButton(
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
                icon: Icons.favorite,
                text: 'Wishlist',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishlistPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(113, 235, 235, 235),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/vpkbiet_image.jpg"),
                          fit: BoxFit.cover),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'VPKBIET, Baramati',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      Text(
                        'College in Baramati, Maharashtra',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        ' NAAC A Grade',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      MaterialButton(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          height: 30.0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {},
                          child: Text(
                            " Information",
                            style: TextStyle(fontSize: 14.0),
                          )),
                      IconButton(
                          icon: Icon(Icons.favorite), onPressed: () => {}),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
