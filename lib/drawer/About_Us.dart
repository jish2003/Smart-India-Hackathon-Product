import 'package:flutter/material.dart';

class About_Us_Page extends StatefulWidget {
  About_Us_Page({Key? key}) : super(key: key);

  @override
  State<About_Us_Page> createState() => _About_Us_PageState();
}

class _About_Us_PageState extends State<About_Us_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Card(
        color: Colors.white70,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image:
                                        AssetImage("assets/ambolesor.jpeg"))),
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            textAlign: TextAlign.center,
                            'Pankaj Rajaram Ambole',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),

                          //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Project Mentor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'pankajambole@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 100,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ),
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
                            Container(
                              height: 220,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.white,
                              ),
                              child: Expanded(
                                  child: Image(
                                      image: AssetImage("assets/gauri.jpeg"))),
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              textAlign: TextAlign.center,
                              'Gauri Satish Maid',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              'Team Leader , Project Manager',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black87,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'gaurimaidsih@gmail.com',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ), //Textstyle
                            ),
                            const SizedBox(
                              height: 90,
                            ), //SizedBox
                            SizedBox(
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () => 'Null',
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.touch_app),
                                      Text('connect')
                                    ],
                                  ),
                                ),
                              ),
                            ), //SizedBox
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image: AssetImage("assets/maithili.jpeg"))),
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            textAlign: TextAlign.center,
                            'Maithili Santosh Jagtap',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(children: [
                              const Text(
                                'Software Developer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black87,
                                ), //Textstyle
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'maihilijagtap@gmail.com',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ), //Textstyle
                              ),
                            ]),
                          ),
                          //Text
                          const SizedBox(
                            height: 100,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image: AssetImage("assets/jishan.jpeg"))),
                          ),
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            textAlign: TextAlign.center,
                            'Jishan Khailan Shaikh',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Software Developer ',
                            style: TextStyle(
                              // fontWeight:FontWeight.bold,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'jishanshaikh2003@gmail.com',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 100,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image: AssetImage("assets/SakshiP.jpeg"))),
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            textAlign: TextAlign.center,
                            'Sakshi Sampat Pawar',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Software Developer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),

                          const Text(
                            'sakshipawar2283@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 100,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image: AssetImage("assets/SakshiG.jpeg"))),
                          ),
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            textAlign: TextAlign.center,
                            'Sakshi Sandip Gadhave',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Software Developer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'sakshigadhave@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 100,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
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
                          Container(
                            height: 220,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                            ),
                            child: Expanded(
                                child: Image(
                                    image: AssetImage("assets/nishant.jpeg"))),
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            'Nishant Ghanshyam Kathavate',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          const Text(
                            'Software Developer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'nishantkathavate705706@gmail.com',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 75,
                          ), //SizedBox
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () => 'Null',
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('connect')
                                  ],
                                ),
                              ),
                            ),
                          ), //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),

                //Card
              ),
            ],
          ),
        ),
      ),
    );
  }
}
