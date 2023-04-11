import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/personal_info_screen/widgets/form_person_info.dart';
import 'package:book_flight_app/features/personal_info_screen/widgets/image_and_name_of_person.dart';
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
            //resizeToAvoidBottomInset: false,
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
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    const ImageAndNameOfPerson(),
                    const FormPersonInfo(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'paymentScreen');
                        },
                        child: const CustomButton(
                          title: 'Confirm',
                          color: kPrimaryColor,
                          height: 56.0,
                          titleColor: kLightColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'paymentScreen');
                      },
                      child: Text(
                        'Skip'.tr().toString(),
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
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
    debugPrint('$myLocale'.toString());
    debugPrint(currentLanguage);
    super.didChangeDependencies();
  }

}
