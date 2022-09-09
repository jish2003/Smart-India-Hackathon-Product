import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import 'bar_chart_model.dart';

class Bar_chart_home extends StatelessWidget {
  Bar_chart_home({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
      year: "2015",
      financial: 55,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      year: "2016",
      financial: 64,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "2017",
      financial: 102,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "2018",
      financial: 70,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: "2019",
      financial: 97,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "2020",
      financial: 124,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: "2021",
      financial: 107,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Column(
      children: [
        Container(
          height: 500,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: charts.BarChart(
            series,
            animate: true,
          ),
        ),
        Row(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_upward_outlined),
                Text("Percentage of Students Placed"),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Icon(Icons.arrow_forward),
                Text("Academic Year"),
              ],
            ),
          ],
        )
      ],
    );
  }
}
