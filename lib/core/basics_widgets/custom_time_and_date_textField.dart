import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            ),
          ),
        ),
        labelText: widget.label.tr().toString(),
        labelStyle: TextStyle(
          color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
              ? kLightColor
              : kGreyColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Color(0xffA6A6A6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
    widget.controller.text = widget.textValue;
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }
}
