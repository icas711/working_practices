import 'package:flutter/material.dart';

mixin ScreenSettings {
  static const kSmallBreakPoint = 700;
  static const kMediumBreakPoint = 1200;
  static const kLargeBreakPoint = 1700;
  static bool isWideScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > kSmallBreakPoint;
  }
}

