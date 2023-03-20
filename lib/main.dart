import 'package:book_flight_app/core/services/theme_service/theme.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/splash_screen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('ar', 'AR'),
      ],
      path: 'assets/translations',
      saveLocale: true,
      fallbackLocale: const Locale('en', 'EN'),
      child: const MyApp(),
    ),
  );
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
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: model.mode,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
