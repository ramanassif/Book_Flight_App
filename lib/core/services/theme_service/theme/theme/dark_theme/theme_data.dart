import 'dart:ui';

import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

import '../theme_enums.dart';
import 'dark_theme_colors.dart';

/// Global constant of class [ThemeData] which represent the Dark Theme in the system
///
///
final ThemeData darkThemeData = ThemeData(
  primaryColor: darkTheme.primaryColor,
  scaffoldBackgroundColor: kDarkBackgroundColor,
  appBarTheme: const AppBarTheme(backgroundColor: kDarkBackgroundColor),
  drawerTheme: const DrawerThemeData(backgroundColor: kDarkBackgroundColor),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: kDarkBackgroundColor),
  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    displayMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    displaySmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    headlineMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    headlineSmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    titleLarge: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    bodyMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
    labelLarge: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w300,
        fontFamily:
            window.locale.languageCode == "ar_AR" ? arFontFamily : enFontFamily,
        color: darkTheme.primaryTextColor),
  ),
);
