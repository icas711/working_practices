
import 'package:flutter/material.dart';
import 'package:working_practices/app/theme/app_colors.dart';
import 'package:working_practices/app/theme/app_theme_data.dart';
import 'package:working_practices/app/theme/text_styles.dart';



ThemeData createDarkTheme(){
  return themeData($AppThemeColors.darkColors).copyWith(
    extensions:  const <ThemeExtension<dynamic>>[
      $AppThemeColors.darkColors,
      $AppThemeTextStyles.darkTextStyle,
    ],
  );
}