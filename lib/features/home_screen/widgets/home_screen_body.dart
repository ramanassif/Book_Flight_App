import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool isOneSelected = true;
  bool isTwoSelected = false;
  bool isThreeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                ? kLightBackgroundColor
                : kDarkBackgroundColor,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            top: 8,
          ),
          child: GestureDetector(
            onTap: () {
              Provider.of<ThemeServices>(context, listen: false).toggleMode();
              setState(() {});
            },
            child: Icon(
              Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? Icons.nightlight_round_outlined
                  : Icons.wb_sunny_outlined,
              color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkColor
                  : kLightColor,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            bottom: 12.0,
          ),
          child: Text(
            'Book Flight',
            style: TextStyle(
              fontSize: 20,
              color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkColor
                  : kLightColor,
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
                color:
                    Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                        ? kDarkColor
                        : kLightColor,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
            ? kLightBackgroundColor
            : kDarkBackgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 32.0,
                top: 32.0,
              ),
              child: Container(
                height: 36,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Visibility(
                            visible: isOneSelected ? true : false,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 36,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOneSelected = true;
                                    isTwoSelected = false;
                                    isThreeSelected = false;
                                  });
                                },
                                child: Text(
                                  'One Way',
                                  style: TextStyle(
                                    color: isOneSelected
                                        ? kLightColor
                                        : Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Visibility(
                            visible: isTwoSelected ? true : false,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 36,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOneSelected = false;
                                    isTwoSelected = true;
                                    isThreeSelected = false;
                                  });
                                },
                                child: Text(
                                  'Round',
                                  style: TextStyle(
                                    color: isTwoSelected
                                        ? kLightColor
                                        : Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Visibility(
                            visible: isThreeSelected ? true : false,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 36,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isOneSelected = false;
                                    isTwoSelected = false;
                                    isThreeSelected = true;
                                  });
                                },
                                child: Text(
                                  'Multicity',
                                  style: TextStyle(
                                    color: isThreeSelected
                                        ? kLightColor
                                        : Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
