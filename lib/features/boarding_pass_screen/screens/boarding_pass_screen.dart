import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardingPassScreen extends StatefulWidget {
  const BoardingPassScreen({Key? key}) : super(key: key);

  @override
  State<BoardingPassScreen> createState() => _BoardingPassScreenState();
}

class _BoardingPassScreenState extends State<BoardingPassScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  CupertinoIcons.back,
                  color:
                      Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                          ? kLightBackgroundColor
                          : kDarkBackgroundColor,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 12.0,
              ),
              child: Text(
                'Boarding_Pass'.tr().toString(),
                style: TextStyle(
                  fontSize: 20,
                  color:
                      Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor:
                Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                    ? kDarkBackgroundColor
                    : kLightBackgroundColor,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
