import 'package:extension_theme_generator/extension_theme_generator.dart';
import 'package:flutter/material.dart';
import 'package:working_practices/app/theme/app_sizes.dart';
import 'package:working_practices/app/theme/color_palette.dart';

part 'text_styles.g.dart';

@TextStyleAnnotation()
class DarkTextStyle {
  static const TextStyle drawerHeader = TextStyle(
      fontSize: AppSizes.double22, height: 22 / 28, color: ColorPalette.grey);
  static const TextStyle avatar =
      TextStyle(fontSize: AppSizes.double22, color: ColorPalette.white);
  static const TextStyle drawerLabel = TextStyle(
      fontSize: AppSizes.double14, height: 14 / 20, color: ColorPalette.grey);
}

@TextStyleAnnotation()
class LightTextStyle {
  static const TextStyle drawerHeader = TextStyle(
      fontSize: AppSizes.double22, height: 22 / 28, color: ColorPalette.grey);
  static const TextStyle avatar =
      TextStyle(fontSize: AppSizes.double22, color: ColorPalette.white);
  static const TextStyle drawerLabel = TextStyle(
      fontSize: AppSizes.double14, height: 14 / 20, color: ColorPalette.grey);
}
