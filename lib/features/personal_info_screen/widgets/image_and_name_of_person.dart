import 'package:flutter/material.dart';

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
          style: Theme.of(context).textTheme.displaySmall?.apply(fontWeightDelta: 1,),
        ),
      ],
    );
  }
}
