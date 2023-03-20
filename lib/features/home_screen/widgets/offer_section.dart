import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/features/home_screen/widgets/offer_list.dart';
import 'package:flutter/material.dart';

class OfferSection extends StatefulWidget {
  const OfferSection({Key? key}) : super(key: key);

  @override
  State<OfferSection> createState() => _OfferSectionState();
}

class _OfferSectionState extends State<OfferSection> {
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
            children: const [
              Text(
                'Hot offer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kDarkColor,
                ),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
}
