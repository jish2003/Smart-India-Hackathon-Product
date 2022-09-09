import 'package:flutter/material.dart';

class RecentArticles extends StatelessWidget {
  const RecentArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1.0, 10.0, 8.0, 0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        elevation: 6,
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //         style: BorderStyle.solid,
          //         color: Color.fromARGB(255, 170, 170, 170))),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                  child: Text(
                    "Recent Articles",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                // recent articles view
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 5, 13, 21),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Stack(
                            fit: StackFit.loose,
                            children: [
                              Image.asset(
                                'assets/Jee_result.jpg',
                                fit: BoxFit.cover,
                                color: Colors.black.withOpacity(0.5),
                                colorBlendMode: BlendMode.darken,
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Get the Result of JEE MAINS 2021",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: "Times New Roman",
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "A student from Maharashtra tops the result",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Times New Roman",
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Image.asset(
                                  'assets/mit_pune_placement.jpg',
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.5),
                                  colorBlendMode: BlendMode.darken,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Admissions open for Engineering",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "MIT World Peace University",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Click here for more details",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Image.asset(
                                  'assets/mit-pune.jpg',
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.5),
                                  colorBlendMode: BlendMode.darken,
                                ),
                                Container(
                                  child: Align(
                                    //alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "     MIT campus updated gallery",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "MIT World Peace University",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Click here for more details",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Image.asset(
                                  'assets/mht_cet.jpg',
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.5),
                                  colorBlendMode: BlendMode.darken,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Updates about",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                          // textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "  MHT-CET Examination",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Image.asset(
                                  'assets/lowes_hackathon.jpg',
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.5),
                                  colorBlendMode: BlendMode.darken,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Smart Hackathon of 2020",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "India's biggest Hackathon",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Times New Roman",
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
