import 'dart:ui';

import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/theme_enums.dart';
import 'package:flutter/material.dart';

import 'light_theme_colors.dart';

/// Global constant of class [ThemeData] which represent the Light Theme in the system
///
final ThemeData lightThemeData = ThemeData(
  primaryColor: lightTheme.primaryColor,
  scaffoldBackgroundColor: kLightBackgroundColor,
  appBarTheme: const AppBarTheme(backgroundColor: kLightBackgroundColor),
  drawerTheme: const DrawerThemeData(backgroundColor: kLightBackgroundColor),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: kLightBackgroundColor),

  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    displayMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    displaySmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
    labelLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w300,
      fontFamily:
          window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
      color: lightTheme.primaryTextColor,
    ),
  ),
);
