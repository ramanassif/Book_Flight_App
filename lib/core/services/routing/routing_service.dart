import 'package:book_flight_app/features/boarding_pass_screen/boarding_pass_screen.dart';
import 'package:book_flight_app/features/booking_screen/booking_screen.dart';
import 'package:book_flight_app/features/choose_seat_screen/choose_seat_screen.dart';
import 'package:book_flight_app/features/flight_details_screen/flight_details_screen.dart';
import 'package:book_flight_app/features/home_screen/home_screen.dart';
import 'package:book_flight_app/features/payment_screen/payment_screen.dart';
import 'package:book_flight_app/features/personal_info_screen/personal_info_screen.dart';
import 'package:book_flight_app/features/search_screen/search_screen.dart';
import 'package:book_flight_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'homeScreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'bookingScreen':
        return MaterialPageRoute(builder: (_) => const BookingScreen());
      case 'searchScreen':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case 'flightDetailsScreen':
        return MaterialPageRoute(builder: (_) => const FlightDetailsScreen());
      case 'chooseSeatScreen':
        return MaterialPageRoute(builder: (_) => const ChooseSeatScreen());
      case 'personalInfoScreen':
        return MaterialPageRoute(builder: (_) => const PersonalInfoScreen());
      case 'paymentScreen':
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case 'boardingPassScreen':
        return MaterialPageRoute(builder: (_) => const BoardingPassScreen());
    }
    return null;
  }
}
