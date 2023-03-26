import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/home_screen/widgets/flight_selection_widget.dart';
import 'package:book_flight_app/features/home_screen/widgets/offer_section.dart';
import 'package:book_flight_app/features/home_screen/widgets/way_selection_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
      child: Scaffold(
        endDrawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              Provider.of<ThemeServices>(context, listen: false)
                                  .toggleMode();
                            });
                          } else {
                            setState(() {
                              isSwitchedTheme = false;
                              Provider.of<ThemeServices>(context, listen: false)
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
        appBar: AppBar(
          backgroundColor:
              Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkBackgroundColor
                  : kLightBackgroundColor,
          centerTitle: true,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 12.0,
            ),
            child: Text(
              'Book_Flight'.tr().toString(),
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
        body: Container(
          color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
              ? kDarkBackgroundColor
              : kLightBackgroundColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
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
