import 'package:flutter/material.dart';
import 'package:scout_school/comparison/choicrchip.dart';

class Choose_college_1 extends StatefulWidget {
  Choose_college_1({Key? key}) : super(key: key);

  @override
  State<Choose_college_1> createState() => _Choose_college_1State();
}

class _Choose_college_1State extends State<Choose_college_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College 1"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    height: 45,

                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        decoration: InputDecoration(
                            focusColor: Colors.blue,
                            hintText: 'Search..',
                            // suffixIcon: Icon(Icons.close),
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    // Icon(Icons.search),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
              ),
            ),
            Container(
              height: 480,
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChoiceChipDisplay()));
                },
                child: Text("Next",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
