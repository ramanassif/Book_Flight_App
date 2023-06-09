import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/basics_widgets/custom_time_and_date_textField.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/base_theme_extension.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlightDetailsScreen extends StatefulWidget {
  const FlightDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FlightDetailsScreen> createState() => _FlightDetailsScreenState();
}

class _FlightDetailsScreenState extends State<FlightDetailsScreen> {
  String? currentLanguage;
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.fromDateTime(DateTime.now());
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: (currentLanguage == 'en_EN')
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: Theme.of(context).themeColors.primaryColor,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 12.0,
              ),
              child: Text(
                'Flight_details'.tr().toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.apply(fontWeightDelta: -2),
              ),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 96,
                          height: 64,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kContainerBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/indigo.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: kContainerBorderColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5.50',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge
                                        ?.apply(
                                          fontSizeDelta: 4,
                                          color: kDarkColor,
                                        ),
                                  ),
                                  Text(
                                    'DEL',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.apply(
                                          fontWeightDelta: 1,
                                          color: kDarkColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 5,
                                    backgroundColor: kLightGreyColor,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 136,
                                        color: kLightGreyColor,
                                      ),
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: kPrimaryColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: SvgPicture.asset(
                                            'assets/icons/airplane-in-flight.svg',
                                            color: kLightColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const CircleAvatar(
                                    radius: 5,
                                    backgroundColor: kLightGreyColor,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '7.30',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge
                                        ?.apply(
                                          fontSizeDelta: 4,
                                          color: kDarkColor,
                                        ),
                                  ),
                                  Text(
                                    'CCU',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.apply(
                                          fontWeightDelta: 1,
                                          color: kDarkColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Indira Gandhi International Airport',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.apply(
                                      color: const Color(0xff666666),
                                    ),
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Subhash Chandra Bose International Airport',
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.apply(
                                      color: const Color(0xff666666),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: kContainerBorderColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: 16.0,
                          bottom: 16,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: pickedDateFun,
                                child: CustomTimeAndDateTextField(
                                  label: 'Date'.tr().toString(),
                                  iconData: Icons.date_range_outlined,
                                  textValue: formattedDate,
                                  controller: dateController,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 14.0,
                            ),
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: pickedTimeFun,
                                  child: CustomTimeAndDateTextField(
                                    label: 'Time'.tr().toString(),
                                    iconData: Icons.access_time_outlined,
                                    textValue: '9.30',
                                    controller: timeController,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: kContainerBorderColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Price'.tr().toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.apply(
                                    fontSizeDelta: 2,
                                    fontWeightDelta: -4,
                                color: kDarkColor,
                                  ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '\$230',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.apply(
                                fontSizeDelta: 12,
                                fontWeightDelta: -1,
                                color: kDarkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        title: 'Cancel'.tr().toString(),
                        color: Colors.transparent,
                        height: 56,
                        titleColor: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 14.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'chooseSeatScreen');
                        },
                        child: CustomButton(
                          title: 'Confirm'.tr().toString(),
                          color: kPrimaryColor,
                          height: 56,
                          titleColor: kLightColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }

  Future<void> pickedTimeFun() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!);
        });
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
        timeController.text = _selectedTime.toString();
      });
    }
  }
}
