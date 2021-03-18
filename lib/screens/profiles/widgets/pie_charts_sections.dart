import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/pie_chart_data.dart';

List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: "${data.percent.toStringAsFixed(0)}%",
        titleStyle: GoogleFonts.openSans(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      );
      return MapEntry(index, value);
    })
    .values
    .toList();
