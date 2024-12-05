import 'package:flutter/material.dart';
import 'package:working_practices/app/theme/app_colors.dart';
import 'package:working_practices/app/theme/app_theme_data.dart';
import 'package:working_practices/app/theme/text_styles.dart';


ThemeData createLightTheme(){
  return themeData($AppThemeColors.lightColors).copyWith(
    extensions:  const <ThemeExtension<dynamic>>[
      $AppThemeColors.lightColors,
      $AppThemeTextStyles.lightTextStyle,
    ],
  );
}