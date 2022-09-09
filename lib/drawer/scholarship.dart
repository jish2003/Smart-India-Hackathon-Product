import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Scholarship_page extends StatefulWidget {
  Scholarship_page({Key? key}) : super(key: key);

  @override
  State<Scholarship_page> createState() => _Scholarship_pageState();
}

class _Scholarship_pageState extends State<Scholarship_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scholorships'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),

        // centerTitle: true,
      ), //AppBar

      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 4,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 108,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://tse2.mm.bing.net/th?id=OIP.kiHMFjSIgl-DZ5fMn8jFPgHaLH&pid=Api&P=0&w=119&h=179"), //NetworkImage
                            radius: 100,
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          'Lila Poonavala',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        const Text(
                          'The girls are mainly from families where earning members are working as farmers, laborers Those girls who have taken admission to Undergraduate Studies in 2021-2022 for the first academic year student can apply..!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 100,
                            child: Link(
                              uri: Uri.parse(
                                  'https://www.lilapoonawallafoundation.com/'),
                              builder: (context, followLink) => ElevatedButton(
                                onPressed: followLink,
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('visit')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ) //SizedBox
                      ],
                    ), //Column
                  ),
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.s6j2UBEW-Ej1VbNQIqNKrQAAAA&pid=Api&rs=1&c=1&qlt=95&w=187&h=124"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Cummins ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'Scholarship In 2006, Cummins India Foundation for meritorious students from financially and socially The Cummins Scholarship Program provides significant tuition  financial support   ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,

                        child: Link(
                          uri: Uri.parse(
                              'https://www.cummins.com/en/in/company/corporate-responsibility/global-impact/projects/higher-education/india-scholarship-program'),
                          builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('visit')
                                ],
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead

                        // child: RaisedButton(
                        // onPressed: () => null,
                        // color: Colors.green,
                        // child: Padding(
                        //	 padding: const EdgeInsets.all(4.0),
                        //	 child: Row(
                        //	 children: const [
                        //		 Icon(Icons.touch_app),
                        //		 Text('Visit'),
                        //	 ],
                        //	 ), //Row
                        // ), //Padding
                        // ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.35Q71tRI8ro4vuTvU1W1sgHaF6&pid=Api&rs=1&c=1&qlt=95&w=128&h=102"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Persistant',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'The Presidential Persistence Scholarship is availablaccounts through the UMF Office of Financial AidPresidential Persistence Scholarship is automatically awarded to eligible students’  ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,

                        child: Link(
                          uri: Uri.parse('https://www.persistent.com/'),
                          builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('visit')
                                ],
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead

                        // child: RaisedButton(
                        // onPressed: () => null,
                        // color: Colors.green,
                        // child: Padding(
                        //	 padding: const EdgeInsets.all(4.0),
                        //	 child: Row(
                        //	 children: const [
                        //		 Icon(Icons.touch_app),
                        //		 Text('Visit'),
                        //	 ],
                        //	 ), //Row
                        // ), //Padding
                        // ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.DBc33EVam5Nm-pfcBJxviwHaDt&pid=Api&rs=1&c=1&qlt=95&w=206&h=103"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'EBC',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'EBC Scholarships – The Government of Maharashtra announces two EBC scholarships every year. The Rajashri Chhatrapati Shahu Maharaj Shikshan Shulk Shishyavrutti Yojana supports the students   ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,

                        child: Link(
                          uri: Uri.parse('https://mahadbtmahait.gov.in/'),
                          builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('visit')
                                ],
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead

                        // child: RaisedButton(
                        // onPressed: () => null,
                        // color: Colors.green,
                        // child: Padding(
                        //	 padding: const EdgeInsets.all(4.0),
                        //	 child: Row(
                        //	 children: const [
                        //		 Icon(Icons.touch_app),
                        //		 Text('Visit'),
                        //	 ],
                        //	 ), //Row
                        // ), //Padding
                        // ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.JScyaOBv_qYdCr7sqSlm3gAAAA&pid=Api&P=0&w=299&h=160"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Panjabrao',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'Panjabrao Deshmukh Scholarship is a scheme of the Government of Maharashtra to provide financial assistance to poor students pursuing courses under pre-university and graduation at self-financing colleges.  ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,

                        child: Link(
                          uri: Uri.parse(
                              'https://mahadbtmahait.gov.in/SchemeData/SchemeData?str=E9DDFA703C38E51AA5337B52CE309785'),
                          builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('visit')
                                ],
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead

                        // child: RaisedButton(
                        // onPressed: () => null,
                        // color: Colors.green,
                        // child: Padding(
                        //	 padding: const EdgeInsets.all(4.0),
                        //	 child: Row(
                        //	 children: const [
                        //		 Icon(Icons.touch_app),
                        //		 Text('Visit'),
                        //	 ],
                        //	 ), //Row
                        // ), //Padding
                        // ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
          Center(
            /** Card Widget **/
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 108,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse2.mm.bing.net/th?id=OIP.HiUpmgzh-fIJvT43iqPbIAHaHa&pid=Api&P=0&w=155&h=155"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Study Buddy Scholorship',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        'With our Study Buddy Scholarship, you, and a friend (or a group) who enroll in an eligible program together will each receive a 1,000 scholarship.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ), //Textstyle
                      ), //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,

                        child: Link(
                          uri: Uri.parse('https://www.buddy4study.com/'),
                          builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('visit')
                                ],
                              ),
                            ),
                          ),
                        ),
                        // RaisedButton is deprecated and should not be used
                        // Use ElevatedButton instead

                        // child: RaisedButton(
                        // onPressed: () => null,
                        // color: Colors.green,
                        // child: Padding(
                        //	 padding: const EdgeInsets.all(4.0),
                        //	 child: Row(
                        //	 children: const [
                        //		 Icon(Icons.touch_app),
                        //		 Text('Visit'),
                        //	 ],
                        //	 ), //Row
                        // ), //Padding
                        // ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),

            //Card
          ),
        ],
      ),
      //Center
    );
  }
}
