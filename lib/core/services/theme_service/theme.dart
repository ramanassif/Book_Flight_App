import 'dart:ui';

import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class Themes with ChangeNotifier {
  static final lightTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: kDarkColor),
    fontFamily: window.locale.languageCode == 'en_EN' ? 'Inter' : 'Tajawal',
  );

  static final darkTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.dark,
    fontFamily: window.locale.languageCode == 'en_EN' ? 'Inter' : 'Tajawal',
  );
}
