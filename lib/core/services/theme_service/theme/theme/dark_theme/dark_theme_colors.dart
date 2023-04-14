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
  get primaryDarkColor => const Color(0xFF3A2E26);
  @override
  get primaryColor => const Color(0xFF594639);

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
  get buttonStartGradiant => const Color(0xFF826552) ;
  @override
  get buttonEndGradiant => const Color(0xFF9D7A62) ;

  @override
  get loadingSpinnerColor => accentColor;
  @override
  get scaffoldColor => Colors.transparent;

  //!--------- PopUp Colors Theme ----------------!//
}
