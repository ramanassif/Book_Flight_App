import 'package:flutter/material.dart';

class CardOptions extends StatelessWidget {
  const CardOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/mastercard.png',
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/visa_card.png',
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/american_express.png',
            width: 30,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/PayPal-Logo.jpg',
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }
}
