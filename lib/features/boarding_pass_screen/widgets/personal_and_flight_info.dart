import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class PersonalAndFlightInfo extends StatelessWidget {
  const PersonalAndFlightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/images/person.png'),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Mr. John Doe',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Passenger',
              style: TextStyle(
                color: Color(0xff888888),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(
              color: kContainerBorderColor,
            ),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/indigo.png'),
          ),
        ),
      ],
    );
  }
}
