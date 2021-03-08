import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _horizontalBlock = 0;
  static double _verticalBlock = 0;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    }
    _horizontalBlock = _screenWidth / 100;
    _verticalBlock = _screenHeight / 100;
    widthMultiplier = _horizontalBlock;
    heightMultiplier = _verticalBlock;
    print(widthMultiplier);
    print(heightMultiplier);
  }
}
