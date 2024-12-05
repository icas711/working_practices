import 'package:flutter/material.dart';
import 'package:extension_theme_generator/extension_theme_generator.dart';
import 'package:working_practices/app/theme/color_palette.dart';

part 'app_colors.g.dart';

@ColorAnnotation()
class LightColors {
static const primary = ColorPalette.darkBlue;
static const onPrimary = ColorPalette.white;
static const secondary = ColorPalette.greenYellow;
static const onSecondary = ColorPalette.chineseBlack;
static const surface = ColorPalette.white;
static const surfaceSecondary = ColorPalette.cultured;
static const onSurface = ColorPalette.chineseBlack;
static const background = ColorPalette.cultured;
static const backgroundSecondary = ColorPalette.darkScarlet;
static const backgroundTertiary = ColorPalette.cultured;
static const onBackground = ColorPalette.chineseBlack;
static const onBackgroundSecondary = ColorPalette.white;
static const danger = ColorPalette.folly;
static const dangerSecondary = ColorPalette.vividRaspberry;
static const onDanger = ColorPalette.white;
static const textField = ColorPalette.darkBlue;
static const textFieldLabel = ColorPalette.grey;
static const textFieldHelper = ColorPalette.grey;
static const tabBarIndicator = ColorPalette.green;
static const frameTextFieldSecondary = ColorPalette.chineseBlack;
static const inactive = ColorPalette.grey;
static const positive = ColorPalette.green;
static const onPositive = ColorPalette.white;
static const skeletonOnPrimary = ColorPalette.white;
static const skeletonSecondary = ColorPalette.cultured;
static const skeletonTertiary = ColorPalette.lightSilver;
static const tetradicBackground = ColorPalette.lightGreen;
static const shimmer = ColorPalette.platinum;
}

@ColorAnnotation()
class DarkColors {
static const primary = DarkColorPalette.hanPurple;
static const onPrimary = DarkColorPalette.white;
static const secondary = DarkColorPalette.inchworm;
static const onSecondary = DarkColorPalette.black;
static const surface = DarkColorPalette.raisinBlack;
static const surfaceSecondary = DarkColorPalette.raisinBlack;
static const onSurface = DarkColorPalette.white;
static const background = DarkColorPalette.raisinBlack;
static const backgroundSecondary = DarkColorPalette.maroon;
static const backgroundTertiary = DarkColorPalette.raisinBlack;
static const onBackground = DarkColorPalette.white;
static const onBackgroundSecondary = DarkColorPalette.white;
static const danger = DarkColorPalette.brinkPink;
static const dangerSecondary = DarkColorPalette.cyclamen;
static const onDanger = DarkColorPalette.white;
static const textField = DarkColorPalette.lightSilver;
static const textFieldLabel = DarkColorPalette.white;
static const textFieldHelper = DarkColorPalette.black;
static const tabBarIndicator = DarkColorPalette.white;
static const frameTextFieldSecondary = DarkColorPalette.lightSilver;
static const inactive = DarkColorPalette.black;
static const positive = DarkColorPalette.inchworm;
static const onPositive = DarkColorPalette.black;
static const skeletonOnPrimary = DarkColorPalette.white;
static const skeletonSecondary = DarkColorPalette.raisinBlack;
static const skeletonTertiary = DarkColorPalette.lightSilver;
static const tetradicBackground = DarkColorPalette.etonBlue;
static const shimmer = ColorPalette.platinum;
}
