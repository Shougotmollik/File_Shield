import 'package:file_shield/Utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //Light Theme configuration
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.onPrimaryColor,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.whiteColor,
      error: AppColors.redColor,
      onError: AppColors.whiteColor,
      background: AppColors.lightBackgroundColor,
      onBackground: AppColors.onPrimaryColor,
      surface: AppColors.primaryColor,
      onSurface: AppColors.onPrimaryColor,
    ),
  );

  // Dark Theme configuration
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.secondaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.whiteColor,
      secondary: AppColors.lightBackgroundColor,
      onSecondary: AppColors.onPrimaryColor,
      error: AppColors.redColor,
      onError: AppColors.whiteColor,
      background: AppColors.secondaryColor,
      onBackground: AppColors.whiteColor,
      surface: AppColors.primaryColor,
      onSurface: AppColors.onPrimaryColor,
    ),
  );
}
