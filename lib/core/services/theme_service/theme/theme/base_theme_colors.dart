import 'package:flutter/material.dart';

/// Base Theme which every new theme defined should inherit from this abstract class and override its getters if needed.
///
/// Please note that for every new theme defined, it should inherit and override all the colors that don't have a default value in the [BaseThemeColors].
///
/// For Example: X_new_theme  should override [primaryColor]  but doesn't have to override [primaryButtonGradientColors]
abstract class BaseThemeColors {
  /// Unique identifier for each theme
  String getHashedString() => primaryColor.toString() ;


   Color get white => const Color(0xFFFAFCFF);
   Color get black => const Color(0xFF666666);
   Color get grayColor => const Color(0xFF9C9C9A);


   Color get primaryTextColor;
   Color get secondaryTextColor ;

   Color get primaryBackgroundColor ;
   Color get primaryDarkColor ;
   Color get primaryColor ;

   Color get scaffoldColor ;

}
