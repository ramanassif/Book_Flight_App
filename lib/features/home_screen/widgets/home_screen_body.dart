import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/home_screen/widgets/flight_selection_widget.dart';
import 'package:book_flight_app/features/home_screen/widgets/offer_section.dart';
import 'package:book_flight_app/features/home_screen/widgets/way_selection_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          (currentLanguage == 'en_EN') ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        endDrawer: const Drawer(
          backgroundColor: kPrimaryColor,
        ),
        appBar: AppBar(
          backgroundColor:
              Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                  ? kDarkBackgroundColor
                  : kLightBackgroundColor,
          centerTitle: true,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              top: 8,
            ),
            child: GestureDetector(
              onTap: () {
                Provider.of<ThemeServices>(context, listen: false).toggleMode();
                setState(() {});
              },
              child: Icon(
                Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                    ? Icons.wb_sunny_outlined
                    : Icons.nightlight_round_outlined,
                color:
                    Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                        ? kLightColor
                        : kDarkColor,
              ),
            ),
          ),
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
