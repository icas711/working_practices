import 'package:flutter/material.dart';
import 'package:working_practices/app/theme/app_colors.dart';
import 'package:working_practices/app/theme/text_styles.dart';


extension BuildContextExtention on BuildContext {
  $AppThemeTextStyles get appText =>
      Theme.of(this).extension<$AppThemeTextStyles>()!;
  $AppThemeColors get appColor => Theme.of(this).extension<$AppThemeColors>()!;
}