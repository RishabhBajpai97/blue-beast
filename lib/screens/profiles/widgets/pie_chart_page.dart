import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'pie_charts_sections.dart';

class PieChartPage extends StatefulWidget {
  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  @override
  Widget build(BuildContext context) {
    return PieChart(

        PieChartData(
          sectionsSpace: 1,
          borderData: FlBorderData(show: false),
    sections: getSections(),
        ),
      );
  }
}
