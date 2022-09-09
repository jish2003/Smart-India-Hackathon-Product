//cloud firestore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//This function triggers the build process
class Notes_HomePage extends StatelessWidget {
  const Notes_HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Notes",
          textAlign: TextAlign.start,
        ),
      ),

      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () // => Navigator.of(context).pushNamed('/addnote')
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (_) =>  AddNote())
              //);
              {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddNote()),
            );
          },
          child: const Icon(Icons.add)),

      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 6,
          itemBuilder: (_, index) {
            return Container(
                margin: const EdgeInsets.all(10),
                height: 150,
                color: Colors.grey[200],
                child: Text(
                  "Title",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ));
          }),
      // Container
    ); // Scaffold
  } // MaterialApp
}

class AddNote extends StatelessWidget {
  //const AddNote({Key? key}) : super(key: key);
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notes"),
          backgroundColor: Colors.blue,
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('save'),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  controller: title,
                  decoration: InputDecoration(hintText: 'Title'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    controller: content,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(hintText: 'Content'),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
