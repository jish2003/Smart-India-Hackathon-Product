import 'package:flutter/material.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({Key? key}) : super(key: key);

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  var _selectedCourseValue;
  var dropDownList;
  @override
  Widget build(BuildContext context) {
    var _selectedCourseValue;
    var dropDownList;
    return Scaffold(
      body: ListView(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedCourseValue,
              isDense: true,
              isExpanded: true,
              menuMaxHeight: 350,
              items: [
                const DropdownMenuItem(
                    child: Text(
                      "Select Field",
                    ),
                    value: ""),
                ...dropDownList.map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem(
                      child: Text(e['title']), value: e['value']);
                }).toList(),
              ],
              onChanged: (newValue) {
                setState(
                  () {
                    _selectedCourseValue = newValue!;
                    print(_selectedCourseValue);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
