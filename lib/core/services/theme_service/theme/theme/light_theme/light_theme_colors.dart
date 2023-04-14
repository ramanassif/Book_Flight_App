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
  get primaryDarkColor => const Color(0xFF57473D);

  @override
  get primaryColor => const Color(0xFFA07C64);

  @override
  get accentColorDark => const Color(0xFFD09C79);

  @override
  get accentColor => const Color(0xFFF5B989);

  @override
  get accentBorderColor => const Color(0xFFA07C64);

  @override
  get primaryGreenDark => const Color(0xFF737F55);

  @override
  get primaryGreen => const Color(0xFF99A778);

  @override
  get stateSuccess => const Color(0xFF97B748);

  @override
  get stateWaiting => const Color(0xFFBF8C40);

  @override
  get stateWarning => const Color(0xFFFF6262);

  @override
  get stateWarning2 => const Color(0xFFFEF1EC);

  @override
  get stateComplete => const Color(0xFFF5B989);

  @override
  get buttonStartGradiant => const Color(0xFF826552);

  @override
  get buttonEndGradiant => const Color(0xFF9D7A62);

  @override
  get loadingSpinnerColor => accentColor;

  @override
  get scaffoldColor => Colors.transparent;

//!--------- PopUp Colors Theme ----------------!//
}
