import 'package:flutter/material.dart';
import 'package:working_practices/app/theme/app_colors.dart';
import 'package:working_practices/app/theme/app_sizes.dart';

ThemeData themeData($AppThemeColors colors) => ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondary: colors.secondary,
        onSecondary: colors.onSecondary,
        error: colors.danger,
        onError: colors.onDanger,
        //background: _lightColorScheme.background,
        //onBackground: _lightColorScheme.onBackground,
        surface: colors.surface,
        onSurface: colors.onSurface,
      ),
      scaffoldBackgroundColor: colors.background,
      appBarTheme: AppBarTheme(
        color: colors.primary,
        elevation: AppSizes.double0,
        foregroundColor: colors.onPrimary,
        iconTheme: IconThemeData(
          color: colors.onPrimary,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: colors.tabBarIndicator,
        dividerColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: colors.textFieldLabel,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: colors.onPositive,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: colors.positive,
          foregroundColor: colors.onPositive,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.background,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.onBackground,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.primary,
        contentTextStyle: TextStyle(
          color: colors.onPrimary,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
        shape: const CircleBorder(),
        iconSize: 28,
      ),
    );
