import 'dart:io';

import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/basics_widgets/custom_time_and_date_textField.dart';
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
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
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
                                  children: [
                                    Text(
                                      '5.50',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.apply(
                                            fontSizeDelta: 4,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    Text(
                                      'DEL',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(
                                            color: kDarkColor,
                                            fontWeightDelta: -1,
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
                                  children: [
                                    Text(
                                      '7.30',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.apply(
                                            fontSizeDelta: 4,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    Text(
                                      'CCU',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(
                                            color: kDarkColor,
                                            fontWeightDelta: -1,
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
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Indira Gandhi International Airport',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.apply(
                                        color: const Color(0xff666666),
                                      ),
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Subhash Chandra Bose International Airport',
                                  textAlign: TextAlign.end,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.apply(
                                        color: const Color(0xff666666),
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
                                child: InkWell(
                                  onTap: pickedDateFun,
                                  child: CustomTimeAndDateTextField(
                                    label: 'Date'.tr().toString(),
                                    iconData: Icons.date_range_outlined,
                                    textValue: formattedDate,
                                    controller: dateController,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 14.0,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {},
                                    child: CustomTimeAndDateTextField(
                                      label: 'Time'.tr().toString(),
                                      iconData: Icons.access_time_outlined,
                                      textValue: '9.30',
                                      controller: timeController,
                                    ),
                                  )),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            fontWeightDelta: 1,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'IN 230',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.apply(
                                            color: kGreyColor,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            fontWeightDelta: 1,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '22',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.apply(
                                            color: kGreyColor,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            fontWeightDelta: 1,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '2B',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.apply(
                                            color: kGreyColor,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            fontWeightDelta: 1,
                                            color: kDarkColor,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Economy'.tr().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.apply(
                                            color: kGreyColor,
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
              ),
            ],
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
        dateController.text = formattedDate;
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
