import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'theme_constants.dart';

/// The app theme.
final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: _getAppBarTheme(),
  colorScheme: _getColorScheme(),
  textTheme: _getTextTheme(),
  inputDecorationTheme: _getInputDecorationTheme(),
  textSelectionTheme: _getTextSelectionThemeData(),
  fontFamily: ThemeConstants.fontFamilyMontserrat,
  dividerTheme: _getDividerThemeData(),
  iconTheme: _getIconThemeData(),
  checkboxTheme: _getCheckboxThemeData(),
);

AppBarTheme? _getAppBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    titleTextStyle: _getAppBarTitleTextStyle(),
    iconTheme: _getAppBarIconThemeData(),
  );
}

IconThemeData _getAppBarIconThemeData() {
  return const IconThemeData(
    size: 18,
    color: AppColors.white,
  );
}

TextStyle? _getAppBarTitleTextStyle() {
  return const TextStyle(
    fontFamily: ThemeConstants.fontFamilyMontserrat,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: ThemeConstants.fontSize16,
  );
}

DividerThemeData _getDividerThemeData() {
  return const DividerThemeData(
    color: AppColors.stroke,
    thickness: 1.5,
  );
}

CheckboxThemeData _getCheckboxThemeData() {
  return CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color?>(
      AppColors.accent,
    ),
  );
}

IconThemeData _getIconThemeData() {
  return const IconThemeData(
    color: AppColors.primary,
    size: 24.0,
  );
}

InputDecorationTheme _getInputDecorationTheme() {
  return InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusColor: Colors.red,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
  );
}

ColorScheme _getColorScheme() {
  return const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.black,
    onPrimary: AppColors.black,
    secondary: AppColors.black,
    onSecondary: AppColors.black,
    error: AppColors.grey,
    onError: AppColors.grey,
    background: AppColors.black,
    onBackground: AppColors.grey,
    surface: AppColors.black,
    onSurface: AppColors.black,
  );
}

TextSelectionThemeData _getTextSelectionThemeData() {
  return TextSelectionThemeData(
    cursorColor: AppColors.black.withOpacity(0.1),
  );
}

TextTheme _getTextTheme() {
  return const TextTheme(
    bodyText1: TextStyle(
      fontSize: ThemeConstants.fontSize16,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: AppColors.bodyTypographyColor,
      fontSize: ThemeConstants.fontSize14,
      fontWeight: FontWeight.normal,
    ),
    caption: TextStyle(
      fontSize: ThemeConstants.fontSize12,
      fontWeight: FontWeight.normal,
    ),
    headline1: TextStyle(
      color: AppColors.white,
      fontSize: ThemeConstants.fontSize62,
      fontWeight: FontWeight.normal,
    ),
    headline2: TextStyle(
      color: AppColors.white,
      fontSize: ThemeConstants.fontSize36,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: ThemeConstants.fontSize20,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: AppColors.black,
      fontSize: ThemeConstants.fontSize18,
      fontWeight: FontWeight.normal,
    ),
    headline5: TextStyle(
      color: AppColors.primary,
      fontSize: ThemeConstants.fontSize16,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: AppColors.grey,
      fontSize: ThemeConstants.fontSize14,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: AppColors.gray2,
      fontSize: ThemeConstants.fontSize12,
      fontWeight: FontWeight.normal,
    ),
  );
}
