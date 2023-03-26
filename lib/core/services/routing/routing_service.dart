import 'package:book_flight_app/features/home_screen/screens/home_screen.dart';
import 'package:book_flight_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'homeScreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}