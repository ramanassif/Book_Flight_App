import 'package:book_flight_app/core/services/theme_service/theme/theme/light_theme/light_theme_colors.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/theme_utils.dart';
import 'package:flutter/material.dart';

import 'base_theme_colors.dart';

/// An extension on the [ThemeData] class to make it possible to access all attributes in [BaseThemeColors] whether they are
/// default attributes in [ThemeData] like:primaryColor Or custom attributes like: breadCrumbTextColor
///
/// Example of usage: Theme.of(context).themeColors.breadCrumbTextColor
extension BaseThemeExtension on ThemeData {
  String get hashedString {
    return primaryColor.toString() ;
  }

  BaseThemeColors get themeColors {
    return themeColorToBaseThemeMap[hashedString]?? LightThemeColors();
  }
}
