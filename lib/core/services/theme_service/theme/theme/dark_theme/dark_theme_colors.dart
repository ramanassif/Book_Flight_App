import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

import '../base_theme_colors.dart';
import '../dark_theme/theme_data.dart';

/// Global constant of class [DarkThemeColors] which inherit class [BaseThemeColors] defining set of colors an settings and called "Amazon Theme"
/// and used in declaring the [darkThemeData] which represent the system them used in the application.

final DarkThemeColors darkTheme = DarkThemeColors.instance();

class DarkThemeColors extends BaseThemeColors {
  static DarkThemeColors? _darkTheme;

  static DarkThemeColors instance() {
    _darkTheme = _darkTheme ?? DarkThemeColors();
    return _darkTheme!;
  }


  @override
  get primaryTextColor => white;
  @override
  get secondaryTextColor => Colors.black;

  @override
  get primaryBackgroundColor => const Color(0xFF1E1A19);
  @override
  get primaryDarkColor => kLightColor;
  @override
  get primaryColor => kLightColor;

  @override
  get scaffoldColor => Colors.transparent;

  //!--------- PopUp Colors Theme ----------------!//
}
