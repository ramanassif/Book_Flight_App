import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart';
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
                                left: 15,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: 40,
                                  height: 20,
                                  child: const Center(
                                    child: Text(
                                      'From',
                                      style: TextStyle(
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
                                left: 15,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: 25,
                                  height: 20,
                                  child: const Center(
                                    child: Text(
                                      'To',
                                      style: TextStyle(
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
                      left: MediaQuery.of(context).size.width / 1.5,
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
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.date_range_outlined,
                                      color: kGreyColor,
                                      size: 22,
                                    ),
                                    SizedBox(
                                      width: 14,
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
                          Positioned(
                            left: 15,
                            top: -8,
                            child: Container(
                              color: Colors.white,
                              width: 57,
                              height: 20,
                              child: const Center(
                                child: Text(
                                  'Departure',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
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
                      width: 16.0,
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
                                child: Row(
                                  children: const [
                                    Text(
                                      '+ Add Return Date',
                                      style: TextStyle(
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
                          Positioned(
                            left: 15,
                            top: -10,
                            child: Container(
                              color: Colors.white,
                              width: 45,
                              height: 20,
                              child: const Center(
                                child: Text(
                                  'Return',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
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
                          child: Row(
                            children: const [
                              Text(
                                '1 Adult',
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
                    Positioned(
                      left: 15,
                      top: -10,
                      child: Container(
                        color: Colors.white,
                        width: 57,
                        height: 20,
                        child: const Center(
                          child: Text(
                            'Traveller',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
                            children: const [
                              Text(
                                'Economy',
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
                    Positioned(
                      left: 15,
                      top: -10,
                      child: Container(
                        color: Colors.white,
                        width: 40,
                        height: 20,
                        child: const Center(
                          child: Text(
                            'Class',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
}
