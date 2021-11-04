import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  double _width = 0, _height = 0, _diagonal = 0;
  bool _isTablet = false;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;
  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;

    // c2+ a2+b2 => c = srt(a2+b2)
    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));

    _isTablet = size.shortestSide >= 600;
  }

  static Responsive of(BuildContext context) => Responsive(context);
  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;
}