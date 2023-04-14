import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double height;
  final Color color;
  final Color titleColor;

  const CustomButton({
    Key? key,
    required this.title,
    required this.height,
    required this.color,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kPrimaryColor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.displaySmall?.apply(
                fontWeightDelta: 1,
                color: titleColor,
              ),
        ),
      ),
    );
  }
}
