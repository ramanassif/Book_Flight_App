import 'dart:io';

import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String? currentLanguage;
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: (currentLanguage == 'en_EN')
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor:
                Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                    ? kDarkBackgroundColor
                    : kLightBackgroundColor,
            centerTitle: true,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 12.0,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'homeScreen');
                },
                child: Icon(
                  CupertinoIcons.back,
                  color:
                      Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 12.0,
              ),
              child: Text(
                'My_Bookings'.tr().toString(),
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
                    height: Platform.isWindows
                        ? MediaQuery.of(context).size.height * 0.7
                        : MediaQuery.of(context).size.height * 0.58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
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
                                      ),
                                    ),
                                    Text(
                                      'DEL',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                          height: 2,
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
                                      ),
                                    ),
                                    Text(
                                      'CCU',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
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
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
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
                                            onTap: pickedDateFun,
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.date_range_outlined,
                                                  color: kGreyColor,
                                                  size: 22,
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  formattedDate,
                                                  style: const TextStyle(
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
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: kContainerBorderColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flight'.tr().toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kGreyColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      'IN 230',
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
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gate'.tr().toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kGreyColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      '22',
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
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seat'.tr().toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kGreyColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const Text(
                                      '2B',
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
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Class'.tr().toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kGreyColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Economy'.tr().toString(),
                                      style: const TextStyle(
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
                          const SizedBox(
                            height: 24,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, 'personalInfoScreen');
                              },
                              child: const CustomButton(
                                title: 'Modify',
                                titleColor: kLightColor,
                                color: kPrimaryColor,
                                height: 40,
                              )),
                        ],
                      ),
                    ),
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

  pickedDateFun() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: kPrimaryColor,
                onPrimary: Colors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: kPrimaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        formattedDate = DateFormat('yyyy-MM-dd').format(date);
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
