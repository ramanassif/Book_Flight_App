import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
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
  Color selectedColor = kPrimaryColor;
  Color emergencyExitColor = const Color(0xff7C7270);
  Color reversedColor = const Color(0xffD9D9D9);
  bool a1Selected = false;
  bool b1Selected = false;
  bool c1Selected = false;
  bool d1Selected = false;
  bool a2Selected = false;
  bool b2Selected = false;
  bool c2Selected = false;
  bool d2Selected = false;
  bool a3Selected = false;
  bool b3Selected = false;
  bool c3Selected = false;
  bool d3Selected = false;
  bool a4Selected = false;
  bool b4Selected = false;
  bool c4Selected = false;
  bool d4Selected = false;
  bool a5Selected = false;
  bool b5Selected = false;
  bool c5Selected = false;
  bool d5Selected = false;
  bool a6Selected = false;
  bool b6Selected = false;
  bool c6Selected = false;
  bool d6Selected = false;
  bool a7Selected = false;
  bool b7Selected = false;
  bool c7Selected = false;
  bool d7Selected = false;

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
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.apply(fontWeightDelta: -2),
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
            child: SingleChildScrollView(
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
                      children: [
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: kPrimaryColor,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Selected'.tr().toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff7C7270),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Emergency_exit'.tr().toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xffD9D9D9),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Reserved'.tr().toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
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
                            SizedBox(
                              width: 400,
                              height: 200,
                              child: Image.asset(
                                'assets/images/vector.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 50.0,
                                right: 50.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a1Selected = !a1Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '1A',
                                        seatNumberColor: a1Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a1Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b1Selected = !b1Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '1B',
                                        seatNumberColor: b1Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b1Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c1Selected = !c1Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '1C',
                                        seatNumberColor: c1Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c1Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d1Selected = !d1Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '1D',
                                        seatNumberColor: d1Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d1Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a2Selected = !a2Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '2A',
                                        seatNumberColor: a2Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a2Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b2Selected = !b2Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '2B',
                                        seatNumberColor: b2Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b2Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c2Selected = !c2Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '2C',
                                        seatNumberColor: c2Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c2Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d2Selected = !d2Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '2D',
                                        seatNumberColor: d2Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d2Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a3Selected = !a3Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '3A',
                                        seatNumberColor: a3Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a3Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b3Selected = !b3Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '3B',
                                        seatNumberColor: b3Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b3Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c3Selected = !c3Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '3C',
                                        seatNumberColor: c3Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c3Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d3Selected = !d3Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '3D',
                                        seatNumberColor: d3Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d3Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a4Selected = !a4Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '4A',
                                        seatNumberColor: a4Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a4Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b4Selected = !b4Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '4B',
                                        seatNumberColor: b4Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b4Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c4Selected = !c4Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '4C',
                                        seatNumberColor: c4Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c4Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d4Selected = !d4Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '4D',
                                        seatNumberColor: d4Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d4Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a5Selected = !a5Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '5A',
                                        seatNumberColor: a5Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a5Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b5Selected = !b5Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '5B',
                                        seatNumberColor: b5Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b5Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c5Selected = !c5Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '5C',
                                        seatNumberColor: c5Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c5Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d5Selected = !d5Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '5D',
                                        seatNumberColor: d5Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d5Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a6Selected = !a6Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '6A',
                                        seatNumberColor: a6Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a6Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b6Selected = !b6Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '6B',
                                        seatNumberColor: b6Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b6Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c6Selected = !c6Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '6C',
                                        seatNumberColor: c6Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c6Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d6Selected = !d6Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '6D',
                                        seatNumberColor: d6Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d6Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
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
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a7Selected = !a7Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '7A',
                                        seatNumberColor: a7Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: a7Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        b7Selected = !b7Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '7B',
                                        seatNumberColor: b7Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: b7Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        c7Selected = !c7Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '7C',
                                        seatNumberColor: c7Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: c7Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        d7Selected = !d7Selected;
                                      });
                                    },
                                    child: seatContainer(
                                        seatNumber: '7D',
                                        seatNumberColor: d7Selected
                                            ? kLightColor
                                            : kGreyColor,
                                        color: d7Selected
                                            ? kPrimaryColor
                                            : kContainerBorderColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, 'personalInfoScreen');
                                },
                                child: CustomButton(
                                  title: 'Confirm'.tr().toString(),
                                  color: kPrimaryColor,
                                  height: 56.0,
                                  titleColor: kLightColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
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
      ),
    );
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    precacheImage(const AssetImage("assets/images/vector.png"), context);
    super.didChangeDependencies();
  }

  Widget seatContainer(
      {required String seatNumber,
      required Color seatNumberColor,
      required Color color}) {
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
          style: Theme.of(context).textTheme.displaySmall?.apply(
                fontWeightDelta: 1,
                color: seatNumberColor,
              ),
        ),
      ),
    );
  }
}
