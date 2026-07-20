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
          color: AuthColors.primaryTextColor,
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: AuthColors.primaryTextColor,
        ),
        titleSmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: AuthColors.primaryTextColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AuthColors.secondaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AuthColors.secondaryTextColor,
        ),
        bodySmall: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: AuthColors.secondaryTextColor,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AuthColors.inputTextColor,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: AuthColors.primaryTextColor,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: AuthColors.primaryTextColor,
        ),
      ),
    );
  }
}
