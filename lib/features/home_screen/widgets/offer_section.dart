import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/features/home_screen/widgets/offer_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OfferSection extends StatefulWidget {
  const OfferSection({Key? key}) : super(key: key);

  @override
  State<OfferSection> createState() => _OfferSectionState();
}

class _OfferSectionState extends State<OfferSection> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 12.0,
          ),
          child: Row(
            children: [
              Text(
                'Hot_Offer'.tr().toString(),
                style: Theme.of(context).textTheme.displayMedium,
                // style: TextStyle(
                //   fontSize: 18,
                //   fontWeight: FontWeight.w600,
                //   color:
                //       Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                //           ? kLightColor
                //           : kDarkColor,
                // ),
              ),
              const Spacer(),
              Text(
                'See_All'.tr().toString(),
                style: Theme.of(context).textTheme.headlineMedium?.apply(
                      fontWeightDelta: 1,
                      color: kPrimaryColor,
                    ),
              ),
            ],
          ),
        ),
        const OfferList(),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
  }
}
