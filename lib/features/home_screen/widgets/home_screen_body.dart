import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/home_screen/widgets/flight_selection_widget.dart';
import 'package:book_flight_app/features/home_screen/widgets/offer_section.dart';
import 'package:book_flight_app/features/home_screen/widgets/way_selection_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  String? currentLanguage;
  bool isSwitchedTheme = false;
  bool? isSwitchedLanguage;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          (currentLanguage == 'en_EN') ? TextDirection.ltr : TextDirection.rtl,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          endDrawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(CupertinoIcons.multiply)),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/person.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello'.tr().toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: SvgPicture.asset(
                              'assets/icons/booking.svg',
                              color: Provider.of<ThemeServices>(context).mode ==
                                      ThemeMode.dark
                                  ? kLightColor
                                  : kDarkColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'My_Bookings'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.creditcard,
                            size: 22,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Boarding_Pass'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.support_agent_outlined,
                            size: 22,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Support'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            size: 22,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Rate_us'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: SvgPicture.asset(
                              'assets/icons/airplane-in-flight.svg',
                              color: Provider.of<ThemeServices>(context).mode ==
                                      ThemeMode.dark
                                  ? kLightColor
                                  : kDarkColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Flight'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bed_rounded,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Hotel'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.directions_bus_filled_outlined,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Bus'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.bag,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Tour'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 24.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.museum_outlined,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Travel_loan'.tr().toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Choose_your_theme'.tr().toString(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Light_Mode'.tr().toString(),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            dragStartBehavior: DragStartBehavior.start,
                            value: isSwitchedTheme,
                            onChanged: (value) {
                              if (isSwitchedTheme == false) {
                                setState(() {
                                  isSwitchedTheme = true;
                                  Provider.of<ThemeServices>(context,
                                          listen: false)
                                      .toggleMode();
                                });
                              } else {
                                setState(() {
                                  isSwitchedTheme = false;
                                  Provider.of<ThemeServices>(context,
                                          listen: false)
                                      .toggleMode();
                                });
                              }
                            },
                          ),
                        ),
                        Text(
                          'Dark_Mode'.tr().toString(),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Choose_app_language'.tr().toString(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'English'.tr().toString(),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            dragStartBehavior: DragStartBehavior.start,
                            value: isSwitchedLanguage!,
                            onChanged: (value) {
                              if (isSwitchedLanguage == false) {
                                setState(() {
                                  isSwitchedLanguage = true;
                                  Navigator.pop(context);
                                  context.setLocale(const Locale('ar', 'AR'));
                                  currentLanguage = 'ar_AR';
                                });
                              } else {
                                setState(() {
                                  isSwitchedLanguage = false;
                                  Navigator.pop(context);
                                  context.setLocale(const Locale('en', 'EN'));
                                  currentLanguage = 'en_EN';
                                });
                              }
                            },
                          ),
                        ),
                        Text(
                          'Arabic'.tr().toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: Container(),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 12.0,
              ),
              child: Text(
                'Book_Flight'.tr().toString(),
                style: Theme.of(context).textTheme.displayLarge?.apply(fontWeightDelta: -2),
              ),
            ),
            actions: [
              Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: (currentLanguage == 'en_EN') ? 24.0 : 0,
                      left: (currentLanguage == 'ar_AR') ? 24.0 : 0,
                      bottom: 12,
                      top: 24.0,
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ),
                );
              }),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const WaySelectionWidget(),
                const FlightSelectionWidget(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: 16.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: Provider.of<ThemeServices>(context).mode ==
                            ThemeMode.dark
                        ? Colors.grey
                        : kContainerBorderColor,
                  ),
                ),
                const OfferSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    isSwitchedLanguage = (currentLanguage == 'en_EN') ? false : true;
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }
}
