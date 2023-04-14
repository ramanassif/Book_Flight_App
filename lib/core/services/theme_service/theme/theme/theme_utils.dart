import 'package:book_flight_app/core/services/theme_service/theme/theme/theme_enums.dart';
import 'package:flutter/material.dart';

import 'base_theme_colors.dart';
import 'dark_theme/dark_theme_colors.dart';
import 'dark_theme/theme_data.dart';
import 'light_theme/light_theme_colors.dart';
import 'light_theme/theme_data.dart';


/// Global constant representing the key of the selected theme in the shared preferences.
const String themeSharedPrefKey = "THEME_KEY";

/// Global map which can help connecting between the string of the theme and the enum of the theme.
final Map<String, ThemeType> themeTypeMap = {
  themeTypeToString(ThemeType.DarkTheme): ThemeType.DarkTheme,
  themeTypeToString(ThemeType.LightTheme): ThemeType.LightTheme,
};

/// Global map which can help connecting between the enum of theme and the theme data of the theme.
Map<ThemeType, ThemeData> themeDataMap = {
  ThemeType.LightTheme: lightThemeData,
  ThemeType.DarkTheme: darkThemeData,
};

/// Global map which can help connecting between the identifier of the theme and the theme instance itself.

Map<String, BaseThemeColors> themeColorToBaseThemeMap = {
  darkTheme.getHashedString(): darkTheme,
  lightTheme.getHashedString(): lightTheme,
};

/// Global function to get the string of the theme type(enum) without the "." in it
///
/// Example: For the theme type [ThemeType.LightTheme] returning "LightTheme" instead of "ThemeType.LightTheme".
String themeTypeToString(ThemeType? themeType) {
  if (themeType == null) return "LightTheme";
  return themeType.toString().split(".")[1];
}
/// Global helper function to access [themeTypeMap]
ThemeType getThemeTypeFromThemeString(String? theme) {
  if (theme == null) return ThemeType.LightTheme;
  return themeTypeMap[theme]!;
}

/// Global helper function to access [themeDataMap].

getThemeData(ThemeType? themeType) {
  return themeDataMap[themeType!];
}
