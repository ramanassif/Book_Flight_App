import 'package:book_flight_app/core/services/theme_service/theme.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeServices(),
      child: Consumer<ThemeServices>(
        builder: (_, model, __) => MaterialApp(
          title: 'Book Flight',
          debugShowCheckedModeBanner: false,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: model.mode,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
