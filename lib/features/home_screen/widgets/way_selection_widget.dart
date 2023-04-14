import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WaySelectionWidget extends StatefulWidget {
  const WaySelectionWidget({Key? key}) : super(key: key);

  @override
  State<WaySelectionWidget> createState() => _WaySelectionWidgetState();
}

class _WaySelectionWidgetState extends State<WaySelectionWidget> {
  bool isOneSelected = true;
  bool isTwoSelected = false;
  bool isThreeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 32.0,
        bottom: 16.0,
      ),
      child: Container(
        height: 36,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Visibility(
                    visible: isOneSelected ? true : false,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 36,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOneSelected = true;
                            isTwoSelected = false;
                            isThreeSelected = false;
                          });
                        },
                        child: Text(
                          'One_way'.tr().toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.apply(
                                color:
                                    isOneSelected ? kLightColor : Colors.grey,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Visibility(
                    visible: isTwoSelected ? true : false,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 36,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOneSelected = false;
                            isTwoSelected = true;
                            isThreeSelected = false;
                          });
                        },
                        child: Text(
                          'Round'.tr().toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.apply(
                                color:
                                    isTwoSelected ? kLightColor : Colors.grey,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Visibility(
                    visible: isThreeSelected ? true : false,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 36,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isOneSelected = false;
                            isTwoSelected = false;
                            isThreeSelected = true;
                          });
                        },
                        child: Text(
                          'Multicity'.tr().toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.apply(
                                color:
                                    isThreeSelected ? kLightColor : Colors.grey,
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
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Locale myLocale = Localizations.localeOf(context);
    debugPrint('$myLocale'.toString());
  }
}
