import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode? kLightBackgroundColor : kDarkBackgroundColor,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                ThemeServices().switchTheme();
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 8,
              ),
              child: Icon(
                Get.isDarkMode
                    ? Icons.nightlight_round_outlined : Icons.wb_sunny_outlined,
                color: Get.isDarkMode? kDarkColor : kLightColor,
              ),
            ),),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            bottom: 12.0,
          ),
          child: Text(
            'Book Flight',
            style: TextStyle(
              fontSize: 20,
              color: Get.isDarkMode? kDarkColor : kLightColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                right: 24.0,
                bottom: 22,
                top: 24.0,
              ),
              child: Icon(
                Icons.menu,
                color: Get.isDarkMode? kDarkColor : kLightColor,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Get.isDarkMode? kLightBackgroundColor : kDarkBackgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
