import 'package:book_flight_app/core/services/theme_service/theme.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();
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
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: model.mode,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
