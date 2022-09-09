import 'package:flutter/material.dart';

class DocPage extends StatefulWidget {
  const DocPage({Key? key}) : super(key: key);

  @override
  State<DocPage> createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Documents '),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          /* CircleAvatar(

            maxRadius: 30,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 25,),
          ),*/

          Center(
            child: Text(
              'Documents required for getting admission in engineering colleges are the following',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          /* Text(
            "Documents required for getting admission in engineering colleges are the following",
            style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w100


               ),
          ),*/
          SizedBox(
            height: 10,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 1.10th marksheet. ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "2.12th marksheet or 12th board certificate.",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 3.If u r diploma holder and for asking direct second year admission then bring all ur marksheets with u ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 4. Domacile certificate ( birth certificate) ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "5. Your passport size photo. ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              "6. Income certificate if you are taking an admission in TFWS scheme ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 7. Cast Certificate if applicable. ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              contentPadding: const EdgeInsets.all(5.0),
            ),
            child: Text(
              " 8. Adhar Card ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Hope this information will help you !!",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
