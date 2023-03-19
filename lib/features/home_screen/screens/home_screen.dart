import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/features/home_screen/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;
  List pages = [
    const HomeScreenBody(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          color: kPrimaryColor,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 0;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 32,
                              child: SvgPicture.asset(
                                'assets/icons/home.svg',
                                color: selectedTab == 0
                                    ? Colors.white
                                    : kSecondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: selectedTab == 0
                                    ? Colors.white
                                    : kSecondaryColor,
                                fontSize: 12,
                                fontWeight: selectedTab == 0
                                    ? FontWeight.w600
                                    : FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 1;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 30,
                              child: SvgPicture.asset(
                                'assets/icons/booking.svg',
                                color: selectedTab == 1
                                    ? Colors.white
                                    : kSecondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Booking',
                              style: TextStyle(
                                color: selectedTab == 1
                                    ? Colors.white
                                    : kSecondaryColor,
                                fontSize: 12,
                                fontWeight: selectedTab == 1
                                    ? FontWeight.w600
                                    : FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 2;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 30,
                              child: SvgPicture.asset(
                                'assets/icons/offer.svg',
                                color: selectedTab == 2
                                    ? Colors.white
                                    : kSecondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Offer',
                              style: TextStyle(
                                color: selectedTab == 2
                                    ? Colors.white
                                    : kSecondaryColor,
                                fontSize: 12,
                                fontWeight: selectedTab == 2
                                    ? FontWeight.w600
                                    : FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 3;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 30,
                              child: SvgPicture.asset(
                                'assets/icons/inbox.svg',
                                color: selectedTab == 3
                                    ? Colors.white
                                    : kSecondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Inbox',
                              style: TextStyle(
                                color: selectedTab == 3
                                    ? Colors.white
                                    : kSecondaryColor,
                                fontSize: 12,
                                fontWeight: selectedTab == 3
                                    ? FontWeight.w600
                                    : FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 4;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 30,
                              child: SvgPicture.asset(
                                'assets/icons/profile.svg',
                                color: selectedTab == 4
                                    ? Colors.white
                                    : kSecondaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: selectedTab == 4
                                    ? Colors.white
                                    : kSecondaryColor,
                                fontSize: 12,
                                fontWeight: selectedTab == 4
                                    ? FontWeight.w600
                                    : FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: pages[selectedTab],
      ),
    );
  }
}
