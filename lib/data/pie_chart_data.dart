import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: "Present", color: Color(0xFF05CF97), percent: 55),
    Data(name: "Absent", color: Color(0xFFF90000), percent: 30),
    Data(name: "Leave", color: Color(0xFFF4BA00), percent: 15)
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;
  Data({this.name, this.color, this.percent});
}
