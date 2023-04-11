import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageAndNameOfPerson extends StatelessWidget {
  const ImageAndNameOfPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/images/person.png'),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Hello Traveller',
          style: TextStyle(
            color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                ? kLightColor
                : kDarkColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
