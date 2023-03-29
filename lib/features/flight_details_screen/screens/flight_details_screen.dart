import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FlightDetailsScreen extends StatefulWidget {
  const FlightDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FlightDetailsScreen> createState() => _FlightDetailsScreenState();
}

class _FlightDetailsScreenState extends State<FlightDetailsScreen> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: (currentLanguage == 'en_EN')
            ? TextDirection.ltr
            : TextDirection.rtl,
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
                'Flight_details'.tr().toString(),
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
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkBackgroundColor
                  : kLightBackgroundColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 96,
                            height: 64,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kContainerBorderColor,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/indigo.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width,
                            color: kContainerBorderColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '5.50',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kDarkColor,
                                      ),
                                    ),
                                    Text(
                                      'DEL',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: kDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 5,
                                      backgroundColor: kLightGreyColor,
                                    ),
                                    Stack(
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 1,
                                          width: 136,
                                          color: kLightGreyColor,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: kPrimaryColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: SvgPicture.asset(
                                              'assets/icons/airplane-in-flight.svg',
                                              color: kLightColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const CircleAvatar(
                                      radius: 5,
                                      backgroundColor: kLightGreyColor,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      '7.30',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: kDarkColor,
                                      ),
                                    ),
                                    Text(
                                      'CCU',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: kDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Indira Gandhi International Airport',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xff666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Subhash Chandra Bose International Airport',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Color(0xff666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width,
                            color: kContainerBorderColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 16.0,
                            bottom: 16,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: kContainerBorderColor,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                        ),
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.date_range_outlined,
                                                  color: kGreyColor,
                                                  size: 22,
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  '15/07/2022',
                                                  style: TextStyle(
                                                    color: kDarkColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: (currentLanguage == 'en_EN')
                                          ? 15
                                          : 110,
                                      right: (currentLanguage == 'en_EN')
                                          ? 110
                                          : 15,
                                      top: -8,
                                      child: Container(
                                        color: Colors.white,
                                        width: 40,
                                        height: 20,
                                        child: Center(
                                          child: Text(
                                            'Date'.tr().toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 14.0,
                              ),
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: kContainerBorderColor,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                        ),
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.access_time,
                                                  color: kGreyColor,
                                                  size: 22,
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  '09.30',
                                                  style: TextStyle(
                                                    color: kDarkColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: (currentLanguage == 'en_EN')
                                          ? 15
                                          : 110,
                                      right: (currentLanguage == 'en_EN')
                                          ? 110
                                          : 15,
                                      top: -8,
                                      child: Container(
                                        color: Colors.white,
                                        width: 40,
                                        height: 20,
                                        child: Center(
                                          child: Text(
                                            'Time'.tr().toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: kGreyColor,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width,
                            color: kContainerBorderColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Price'.tr().toString(),
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: kDarkColor,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                '\$230',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  color: kDarkColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel'.tr().toString(),
                              style: const TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 14.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'chooseSeatScreen');
                          },
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Confirm'.tr().toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
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
      ),
    );
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }
}
