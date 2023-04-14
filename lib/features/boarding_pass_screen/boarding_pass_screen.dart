import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/boarding_pass_screen/widgets/flight_details.dart';
import 'package:book_flight_app/features/boarding_pass_screen/widgets/personal_and_flight_info.dart';
import 'package:book_flight_app/features/boarding_pass_screen/widgets/qr_code_details.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardingPassScreen extends StatefulWidget {
  const BoardingPassScreen({Key? key}) : super(key: key);

  @override
  State<BoardingPassScreen> createState() => _BoardingPassScreenState();
}

class _BoardingPassScreenState extends State<BoardingPassScreen> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
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
                    color: Provider.of<ThemeServices>(context).mode ==
                            ThemeMode.dark
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
                  'Boarding_Pass'.tr().toString(),
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.apply(fontWeightDelta: -2),
                ),
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 34,
                    ),
                    const PersonalAndFlightInfo(),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const FlightDetails(),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const QrCodeDetails(),
                    const SizedBox(
                      height: 32,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CustomButton(
                        title: 'Download'.tr().toString(),
                        height: 56.0,
                        color: kPrimaryColor,
                        titleColor: kLightColor,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'homeScreen');
                      },
                      child: Text(
                        'Book_another_flight'.tr().toString(),
                        style: Theme.of(context).textTheme.displaySmall?.apply(
                              color: kPrimaryColor,
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
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
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }
}
