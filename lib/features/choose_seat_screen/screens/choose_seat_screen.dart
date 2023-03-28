import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseSeatScreen extends StatefulWidget {
  const ChooseSeatScreen({Key? key}) : super(key: key);

  @override
  State<ChooseSeatScreen> createState() => _ChooseSeatScreenState();
}

class _ChooseSeatScreenState extends State<ChooseSeatScreen> {
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
                'Choose_Seat'.tr().toString(),
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
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: 24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Selected',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyColor,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xff7C7270),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Emergency exit',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyColor,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xffD9D9D9),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Reserved',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Intersect.png',
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Vector 1.png',
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Image.asset(
                                'assets/images/Vector 2.png',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '1A',
                                    color: kContainerBorderColor),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '1B',
                                    color: kContainerBorderColor),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '1C',
                                    color: kContainerBorderColor),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '1D',
                                    color: kContainerBorderColor),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '2A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '2B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '2C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '2D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '3A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '3B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '3C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '3D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '4A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '4B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '4C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '4D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '5A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '5B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '5C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '5D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '6A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '6B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '6C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '6D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                              right: 50.0,
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                seatContainer(
                                    seatNumber: '1A',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '1B',
                                    color: const Color(0xffD9D9D9)),
                                const Spacer(),
                                seatContainer(
                                    seatNumber: '1C',
                                    color: const Color(0xffD9D9D9)),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                seatContainer(
                                    seatNumber: '1D',
                                    color: const Color(0xffD9D9D9)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
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
                        ],
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

  Container seatContainer({required String seatNumber, required Color color}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          seatNumber,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kGreyColor,
          ),
        ),
      ),
    );
  }
}
