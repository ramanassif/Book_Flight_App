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
  bool isSwitchedLanguage = false;

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
                const Text('Choose Your Theme'),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text('Light Mode'),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.wb_sunny_outlined,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
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
                    const Text('Dark Mode'),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.nightlight_round_outlined,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Choose App Language'),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('English'),
                    Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                        activeColor: kPrimaryColor,
                        dragStartBehavior: DragStartBehavior.start,
                        value: isSwitchedLanguage,
                        onChanged: (value) {
                          if (isSwitchedLanguage == false) {
                            setState(() {
                              isSwitchedLanguage = true;
                            });
                          } else {
                            setState(() {
                              isSwitchedLanguage = false;
                            });
                          }
                        },
                      ),
                    ),
                    const Text('Arabic'),
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
              top: 24.0,
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
                  padding: const EdgeInsets.only(
                    right: 24.0,
                    bottom: 22,
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
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }
}
