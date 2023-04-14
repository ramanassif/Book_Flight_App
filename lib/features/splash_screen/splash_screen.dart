import 'dart:async';

import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/generic_loader.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kPrimaryColor,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/app_logo.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Book_Flight'.tr().toString(),
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.displayLarge?.apply(
                                    fontSizeDelta: 16,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4.2),
                child: const GenericLoader(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushNamed(
        context,
        'homeScreen',
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage("assets/images/app_logo.png"), context);
  }
}
