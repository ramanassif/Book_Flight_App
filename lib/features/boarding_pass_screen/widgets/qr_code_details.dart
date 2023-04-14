import 'package:flutter/material.dart';

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
          style:Theme.of(context).textTheme.headlineSmall?.apply(fontWeightDelta: 1,),
        ),
      ],
    );
  }
}
