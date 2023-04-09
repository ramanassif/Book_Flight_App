import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QrCodeDetails extends StatelessWidget {
  const QrCodeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/barcode.png'),
        const SizedBox(
          height: 6,
        ),
        Text(
          'IND222B589659',
          style: TextStyle(
            color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                ? kLightColor
                : kDarkColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
