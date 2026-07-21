import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppFonts {
  AppFonts._();

  static const String primary = 'CircularStd';
  static const String secondary = 'Poppins';
  static const String thirty = 'lato';
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: AppFonts.primary,
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

class AppTextStyles {
  AppTextStyles._();

  static const hero = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 50,
    fontWeight: FontWeight.w800,
    color: AppColors.primaryTextColor,
  );


  static const appBar = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static const sectionTitle = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );
  static const itemTitle = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
  );
  static const likeCount = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );
  static const itemDescriptions = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );
  static const description = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
  );
  static const moreTitle = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );
  static const buttonLabel = TextStyle(
    fontFamily: AppFonts.thirty,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );
}
