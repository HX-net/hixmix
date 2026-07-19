import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'CircularStd',

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 33,
          fontWeight: FontWeight.w800,
          color: SolidColors.primaryTextColor,
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: SolidColors.primaryTextColor,
        ),
        titleSmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: SolidColors.primaryTextColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: SolidColors.secondaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: SolidColors.secondaryTextColor,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: SolidColors.secondaryTextColor,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: SolidColors.inputTextColor,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: SolidColors.inputTextColor,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: SolidColors.inputTextColor,
        ),
      ),
    );
  }
}
