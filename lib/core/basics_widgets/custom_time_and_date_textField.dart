import 'package:book_flight_app/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTimeAndDateTextField extends StatefulWidget {
  final String label;
  final String textValue;
  final IconData iconData;
  final TextEditingController controller;

  const CustomTimeAndDateTextField({
    Key? key,
    required this.label,
    required this.textValue,
    required this.iconData,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTimeAndDateTextField> createState() =>
      _CustomTimeAndDateTextFieldState();
}

class _CustomTimeAndDateTextFieldState
    extends State<CustomTimeAndDateTextField> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      controller: widget.controller,
      cursorColor: kPrimaryColor,
      style: const TextStyle(fontSize: 14, color: kDarkColor),
      decoration: InputDecoration(
        prefix: Padding(
          padding: EdgeInsets.only(
            right: currentLanguage == 'en_EN' ? 4.0 : 0,
            left: currentLanguage == 'en_EN' ? 0 : 4.0,
          ),
          child: Transform.translate(
            offset: const Offset(0, 4),
            child: Icon(
              widget.iconData,
              size: 20,
              color: kDarkColor,
            ),
          ),
        ),
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: kGreyColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Color(0xffA6A6A6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.only(
          left: currentLanguage == 'en_EN' ? 12 : 0,
          right: currentLanguage == 'en_EN' ? 0 : 12,
          top: 16,
          bottom: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kContainerBorderColor,
          ),
          gapPadding: 8,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kContainerBorderColor,
          ),
          gapPadding: 8,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
          gapPadding: 8,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //widget.controller.text = widget.textValue;
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    widget.controller.text = widget.textValue;
    super.didChangeDependencies();
  }
}
