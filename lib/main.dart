import 'dart:io';

import 'package:book_flight_app/core/services/routing/routing_service.dart';
import 'package:book_flight_app/core/services/theme_service/theme.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/dark_theme/theme_data.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/light_theme/theme_data.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:desktop_window/desktop_window.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setWindowSize(const Size(410, 700));
  }
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(
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
          theme: lightThemeData,
          darkTheme: darkThemeData,
          themeMode: model.mode,
          onGenerateRoute: AppRoute.generateRoute,
          initialRoute: 'splashScreen',
        ),
      ),
    );
  }
}
