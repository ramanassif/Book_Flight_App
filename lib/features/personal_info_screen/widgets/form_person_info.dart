import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormPersonInfo extends StatefulWidget {
  const FormPersonInfo({Key? key}) : super(key: key);

  @override
  State<FormPersonInfo> createState() => _FormPersonInfoState();
}

class _FormPersonInfoState extends State<FormPersonInfo> {
  String? currentLanguage;
  bool isFoucs = false;
  DateTime date = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 36.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: currentLanguage == 'en_EN' ? 8.0 : 0,
                    left: currentLanguage == 'en_EN' ? 0 : 8.0,
                  ),
                  child: const Icon(
                    Icons.person_2_outlined,
                    size: 16,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      labelText: 'Name'.tr().toString(),
                      hintText: 'Enter_your_name_here'.tr().toString(),
                      labelStyle: TextStyle(
                        color: Provider.of<ThemeServices>(context).mode ==
                                ThemeMode.dark
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
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      enabledBorder: OutlineInputBorder(
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
                    onChanged: (value) {
                      setState(() {
                        isFoucs = true;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: currentLanguage == 'en_EN' ? 8.0 : 0,
                    left: currentLanguage == 'en_EN' ? 0 : 8.0,
                  ),
                  child: const Icon(
                    Icons.map_outlined,
                    size: 16,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      labelText: 'Address'.tr().toString(),
                      hintText: 'Enter_your_address_here'.tr().toString(),
                      labelStyle: TextStyle(
                        color: Provider.of<ThemeServices>(context).mode ==
                                ThemeMode.dark
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
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      enabledBorder: OutlineInputBorder(
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
                    onChanged: (value) {
                      setState(() {
                        isFoucs = true;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: currentLanguage == 'en_EN' ? 8.0 : 0,
                    left: currentLanguage == 'en_EN' ? 0 : 8.0,
                  ),
                  child: const Icon(
                    Icons.credit_card,
                    size: 16,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      labelText: 'Passport'.tr().toString(),
                      hintText: 'ED 25265 589',
                      labelStyle: TextStyle(
                        color: Provider.of<ThemeServices>(context).mode ==
                                ThemeMode.dark
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
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      enabledBorder: OutlineInputBorder(
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
                    onChanged: (value) {
                      setState(() {
                        isFoucs = true;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: currentLanguage == 'en_EN' ? 8.0 : 0,
                    left: currentLanguage == 'en_EN' ? 0 : 8.0,
                  ),
                  child: const Icon(
                    Icons.cake_outlined,
                    size: 16,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: pickedDateFun,
                    child: TextField(
                      enabled: false,
                      controller: dateController,
                      cursorColor: kPrimaryColor,
                      decoration: InputDecoration(
                        labelText: 'BOD'.tr().toString(),
                        hintText: 'DD-MM-YYYY',
                        labelStyle: TextStyle(
                          color: Provider.of<ThemeServices>(context).mode ==
                                  ThemeMode.dark
                              ? kLightColor
                              : kGreyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        suffixIconColor: MaterialStateColor.resolveWith(
                            (states) => states.contains(MaterialState.focused)
                                ? kPrimaryColor
                                : kGreyColor),
                        hintStyle: const TextStyle(
                          color: Color(0xffA6A6A6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        enabledBorder: OutlineInputBorder(
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
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: kContainerBorderColor,
                          ),
                          gapPadding: 8,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          isFoucs = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: currentLanguage == 'en_EN' ? 8.0 : 0,
                    left: currentLanguage == 'en_EN' ? 0 : 8.0,
                  ),
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: Image.asset(
                      'assets/images/country.png',
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kGreyColor,
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Country'.tr().toString(),
                      hintText: 'Choose_your_country'.tr().toString(),
                      labelStyle: TextStyle(
                        color: Provider.of<ThemeServices>(context).mode ==
                                ThemeMode.dark
                            ? kLightColor
                            : kGreyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      suffixIcon: const Icon(Icons.keyboard_arrow_down),
                      suffixIconColor: MaterialStateColor.resolveWith(
                          (states) => states.contains(MaterialState.focused)
                              ? kPrimaryColor
                              : kGreyColor),
                      hintStyle: const TextStyle(
                        color: Color(0xffA6A6A6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      enabledBorder: OutlineInputBorder(
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
                    onChanged: (value) {
                      setState(() {
                        isFoucs = true;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    dateController.text = formattedDate;
  }

  @override
  void didChangeDependencies() {
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }

  pickedDateFun() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: kPrimaryColor,
                onPrimary: Colors.white,
                onSurface: Colors.black,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: kPrimaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
        formattedDate = DateFormat('yyyy-MM-dd').format(date);
        dateController.text = formattedDate;
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
