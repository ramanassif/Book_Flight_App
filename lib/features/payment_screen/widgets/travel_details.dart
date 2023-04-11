import 'package:book_flight_app/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TravelDetails extends StatelessWidget {
  const TravelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        color: kLight2GreyColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: Image.asset(
                      'assets/images/indigo.png',
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.date_range_outlined,
                    color: kGreyColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    '15/07/2022',
                    style: TextStyle(
                      color: kGreyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
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
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
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
                                padding:
                                const EdgeInsets.all(4.0),
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
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: kContainerBorderColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    'Total'.tr().toString(),
                    style: const TextStyle(
                      color: kDarkColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    '\$230',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
