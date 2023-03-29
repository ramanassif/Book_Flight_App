import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  String? currentLanguage;
  bool isFoucs = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: (currentLanguage == 'en_EN')
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: Provider.of<ThemeServices>(context).mode ==
                            ThemeMode.dark
                        ? kLightBackgroundColor
                        : kDarkBackgroundColor,
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 12.0,
                ),
                child: Text(
                  'Personal_Info'.tr().toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Provider.of<ThemeServices>(context).mode ==
                            ThemeMode.dark
                        ? kLightColor
                        : kDarkColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              centerTitle: true,
              backgroundColor:
                  Provider.of<ThemeServices>(context).mode == ThemeMode.dark
                      ? kDarkBackgroundColor
                      : kLightBackgroundColor,
              elevation: 0,
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/person.png'),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Hello Traveller',
                    style: TextStyle(
                      color: kDarkColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Form(
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
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter your name here',
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
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
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
                                  decoration: InputDecoration(
                                    labelText: 'Address',
                                    hintText: 'Enter your address here',
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
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
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
                                  decoration: InputDecoration(
                                    labelText: 'Passport',
                                    hintText: 'ED 25265 589',
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
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
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
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'BOD',
                                    hintText: '12/05/1990',
                                    labelStyle: const TextStyle(
                                      color: kGreyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIcon:
                                        const Icon(Icons.date_range_rounded),
                                    hintStyle: const TextStyle(
                                      color: Color(0xffA6A6A6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
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
                                child: SizedBox(
                                  width: 16,
                                  height: 16,
                                  child:
                                      Image.asset('assets/images/country.png'),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Country',
                                    hintText: 'Country',
                                    labelStyle: const TextStyle(
                                      color: kGreyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIcon:
                                        const Icon(Icons.keyboard_arrow_down),
                                    hintStyle: const TextStyle(
                                      color: Color(0xffA6A6A6),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
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
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, 'personalInfoScreen');
                            },
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Confirm'.tr().toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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