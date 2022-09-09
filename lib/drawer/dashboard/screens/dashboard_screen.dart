// ignore_for_file: unnecessary_import, implementation_imports

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:scout_school/drawer/dashboard/calendar/DemoApp.dart';
import 'package:scout_school/drawer/dashboard/calendar/customStepper.dart';
import 'package:scout_school/drawer/dashboard/notes/DocumentRequired.dart';

import '../notes/NotesPage.dart';

void main() {
  runApp(const MaterialApp());
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
//  lets create dashboard items

  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            //colors: [Color(0xFF00488D), Color(0xFFFFFFFF)],
            colors: [
              Color.fromARGB(255, 3, 115, 242),
              Color.fromARGB(255, 8, 8, 8)
            ],
          ),
          boxShadow: const [
            BoxShadow(color: Colors.white, blurRadius: 3, offset: Offset(2, 2))
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DemoApp(),
                  ));
            }
            if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DocPage(),
                  ));
              //2.item
            }
            if (index == 2) {
              //3.item
            }
            if (index == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StepperDemo(),
                  ));
              //4.item
            }
            if (index == 4) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notes_HomePage(),
                  ));
              //5.item
            }
            if (index == 5) {
              //6.item

            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 193, 232),
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(2),
            children: [
              makeDashboardItem("Calender", "assets/calendar.gif", 0),
              makeDashboardItem("Documents Required", "assets/notebook.gif", 1),
              // makeDashboardItem("FAQs", "assets/customer.gif", 2),
              makeDashboardItem(
                  "Admission Process", "assets/university.gif", 3),
              makeDashboardItem("Notes", "assets/notebook.gif", 4),
              // makeDashboardItem("Settings", "assets/protection.gif", 1),
            ],
          ))
        ],
      ),
    );
  }
}
