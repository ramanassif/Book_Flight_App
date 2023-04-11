import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card_number'.tr().toString(),
            style: TextStyle(
              color: Provider.of<ThemeServices>(context).mode ==
                  ThemeMode.dark
                  ? kLightColor
                  : kGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: '5300 0000 0000 0000',
              focusColor: kPrimaryColor,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Card_holder_name'.tr().toString(),
            style: TextStyle(
              color: Provider.of<ThemeServices>(context).mode ==
                  ThemeMode.dark
                  ? kLightColor
                  : kGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'John Doe',
              focusColor: kPrimaryColor,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV'.tr().toString(),
                      style: TextStyle(
                        color: Provider.of<ThemeServices>(context)
                            .mode ==
                            ThemeMode.dark
                            ? kLightColor
                            : kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '000',
                        focusColor: kPrimaryColor,
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: kPrimaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry_date'.tr().toString(),
                      style: TextStyle(
                        color: Provider.of<ThemeServices>(context)
                            .mode ==
                            ThemeMode.dark
                            ? kLightColor
                            : kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '05/24',
                        focusColor: kPrimaryColor,
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: kPrimaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
