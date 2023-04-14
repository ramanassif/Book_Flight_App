import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String textValue;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.textValue,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      controller: widget.controller,
      cursorColor: kPrimaryColor,
      style: const TextStyle(
        fontSize: 14,
        color: kDarkColor,
        //color: kDarkColor
      ),
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: kGreyColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          //color: kDarkColor,
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
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    widget.controller.text = widget.textValue;
    super.didChangeDependencies();
  }
}
