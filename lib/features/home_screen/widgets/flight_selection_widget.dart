import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class FlightSelectionWidget extends StatefulWidget {
  const FlightSelectionWidget({Key? key}) : super(key: key);

  @override
  State<FlightSelectionWidget> createState() => _FlightSelectionWidgetState();
}

class _FlightSelectionWidgetState extends State<FlightSelectionWidget> {
  String? currentLanguage;
  String deFormattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String? reFormattedDate;
  DateTime date = DateTime.now();
  int numOfAdult = 1;
  int numOfChildren = 0;
  String? numOfTravellers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height > 700
            ? MediaQuery.of(context).size.height / 1.6
            : MediaQuery.of(context).size.height / 1.3, //windows
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 5.0,
              color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkColor
                  : Colors.grey,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 22.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: kContainerBorderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12.0,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/flight_from.svg',
                                          color: kGreyColor,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: const [
                                                Text(
                                                  'Delhi',
                                                  style: TextStyle(
                                                    color: kDarkColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'DEL',
                                                  style: TextStyle(
                                                    color: kGreyColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Indira Gandhi International Airport',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: (currentLanguage == 'en_EN')
                                    ? 15
                                    : MediaQuery.of(context).size.width * 0.74,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: (currentLanguage == 'en_EN') ? 40 : 30,
                                  height: 20,
                                  child: Center(
                                    child: Text(
                                      'From'.tr().toString(),
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
                          height: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: kContainerBorderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12.0,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/flight_to.svg',
                                          color: kGreyColor,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: const [
                                                Text(
                                                  'Kolkata',
                                                  style: TextStyle(
                                                    color: kDarkColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'CCU',
                                                  style: TextStyle(
                                                    color: kGreyColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              'Subhash Chandra International Airport',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: (currentLanguage == 'en_EN')
                                    ? 15
                                    : MediaQuery.of(context).size.width * 0.74,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: 25,
                                  height: 20,
                                  child: Center(
                                    child: Text(
                                      'To'.tr().toString(),
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
                    Positioned(
                      left: (currentLanguage == 'en_EN')
                          ? MediaQuery.of(context).size.width / 1.5
                          : 20,
                      right: (currentLanguage == 'ar_AR')
                          ? MediaQuery.of(context).size.width / 1.5
                          : 20,
                      bottom: 45,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: kContainerBorderColor,
                          ),
                        ),
                        child: Center(
                          child: Transform.rotate(
                            angle: -math.pi / 2,
                            child: const Icon(
                              CupertinoIcons.arrow_right_arrow_left,
                              color: kDarkColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
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
                                  onTap: dePickedDateFun,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range_outlined,
                                        color: kGreyColor,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 14,
                                      ),
                                      Text(
                                        deFormattedDate,
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
                            left: (currentLanguage == 'en_EN') ? 15 : 75,
                            right: (currentLanguage == 'en_EN') ? 75 : 15,
                            top: -8,
                            child: Container(
                              color: Colors.white,
                              width: 70,
                              height: 20,
                              child: Center(
                                child: Text(
                                  'Departure'.tr().toString(),
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
                        fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
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
                                  onTap: rePickedDateFun,
                                  child: Row(
                                    children: [
                                      Text(
                                        reFormattedDate == null ? '+ ' : ' ',
                                        style: const TextStyle(
                                          color: kGreyColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        reFormattedDate ??
                                            'Add_Return_Date'.tr().toString(),
                                        style: const TextStyle(
                                          color: kGreyColor,
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
                            left: (currentLanguage == 'en_EN') ? 15 : 75,
                            right: (currentLanguage == 'en_EN') ? 100 : 15,
                            top: -8,
                            child: Container(
                              color: Colors.white,
                              width: (currentLanguage == 'en_EN') ? 40 : 60,
                              height: 20,
                              child: Center(
                                child: Text(
                                  'Return'.tr().toString(),
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
              const SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
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
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) =>
                                          AlertDialog(
                                        title: Column(
                                          children: [
                                            const Text(
                                              'Traveller',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Adult',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Age +18',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  width: 100,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: Provider.of<ThemeServices>(
                                                                        context)
                                                                    .mode ==
                                                                ThemeMode.dark
                                                            ? Colors.white
                                                            : Colors.black),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfAdult--;
                                                            });
                                                          },
                                                          child: const Icon(
                                                            CupertinoIcons
                                                                .minus,
                                                            color: Colors.grey,
                                                            size: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          numOfAdult > 1
                                                              ? numOfAdult
                                                                  .toString()
                                                              : '1',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfAdult++;
                                                              debugPrint(numOfAdult
                                                                  .toString());
                                                            });
                                                          },
                                                          child: const Icon(
                                                            CupertinoIcons.plus,
                                                            color: Colors.grey,
                                                            size: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Children',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Age 0 - 17',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  width: 100,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: Provider.of<ThemeServices>(
                                                                        context)
                                                                    .mode ==
                                                                ThemeMode.dark
                                                            ? Colors.white
                                                            : Colors.black),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfChildren--;
                                                            });
                                                          },
                                                          child: const Icon(
                                                            CupertinoIcons
                                                                .minus,
                                                            color: Colors.grey,
                                                            size: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          numOfChildren > 0
                                                              ? numOfChildren
                                                                  .toString()
                                                              : '0',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              numOfChildren++;
                                                            });
                                                          },
                                                          child: const Icon(
                                                            CupertinoIcons.plus,
                                                            color: Colors.grey,
                                                            size: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: kPrimaryColor),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Save')),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: kPrimaryColor),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Cancel',
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).then((value) => setState(() {}));
                            },
                            child: Row(
                              children: [
                                Text(
                                  numOfAdult > 1 ? '$numOfAdult ' : '1 ',
                                  style: const TextStyle(
                                    color: kDarkColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Adult'.tr().toString(),
                                  style: const TextStyle(
                                    color: kDarkColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Visibility(
                                  visible: numOfChildren <= 0 ? false : true,
                                  child: Text(
                                    numOfChildren > 0
                                        ? ', $numOfChildren '
                                        : ', 0 ',
                                    style: const TextStyle(
                                      color: kDarkColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: numOfChildren <= 0 ? false : true,
                                  child: Text(
                                    'Children'.tr().toString(),
                                    style: const TextStyle(
                                      color: kDarkColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
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
                          : MediaQuery.of(context).size.width * 0.68,
                      top: -10,
                      child: Container(
                        color: Colors.white,
                        width: 50,
                        height: 20,
                        child: Center(
                          child: Text(
                            'Traveller'.tr().toString(),
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
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
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
                          child: Row(
                            children: [
                              Text(
                                'Economy'.tr().toString(),
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
                    Positioned(
                      left: (currentLanguage == 'en_EN')
                          ? 15
                          : MediaQuery.of(context).size.width * 0.68,
                      top: -10,
                      child: Container(
                        color: Colors.white,
                        width: 50,
                        height: 20,
                        child: Center(
                          child: Text(
                            'Class'.tr().toString(),
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
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kPrimaryColor),
                  child: Center(
                      child: Text(
                    'Search'.tr().toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
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
    super.didChangeDependencies();
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
  }

  dePickedDateFun() async {
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
                  primary: kPrimaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        deFormattedDate = DateFormat('yyyy-MM-dd').format(date);
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }

  rePickedDateFun() async {
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
                  primary: kPrimaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        reFormattedDate = DateFormat('yyyy-MM-dd').format(date);
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
