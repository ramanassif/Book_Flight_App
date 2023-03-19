import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.light,
    fontFamily: 'Inter',
  );
  static final darkTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.dark,
    fontFamily: 'Inter',
  );
}
