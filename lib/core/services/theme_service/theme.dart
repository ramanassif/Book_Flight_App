import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class Themes with ChangeNotifier {
  static final lightTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: kDarkColor),
    fontFamily: 'Inter',
  );

  static final darkTheme = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(

      )
    ),
    fontFamily: 'Inter',
  );

}
