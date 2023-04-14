import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

import '../base_theme_colors.dart';
import '../light_theme/theme_data.dart';

/// Global constant of class [LightThemeColors] which inherit class [BaseThemeColors] defining set of colors an settings and called "Amazon Theme"
/// and used in declaring the [lightThemeData] which represent the system them used in the application.

final LightThemeColors lightTheme = LightThemeColors.instance();

class LightThemeColors extends BaseThemeColors {
  static LightThemeColors? _lightTheme;

  static LightThemeColors instance() {
    _lightTheme = _lightTheme ?? LightThemeColors();
    return _lightTheme!;
  }

  @override
  get primaryTextColor => Colors.black;

  @override
  get secondaryTextColor => white;

  @override
  get primaryBackgroundColor => white;

  @override
  get primaryDarkColor => kDarkColor;

  @override
  get primaryColor => kDarkColor;

  @override
  get scaffoldColor => Colors.transparent;

//!--------- PopUp Colors Theme ----------------!//
}
