import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:book_flight_app/features/boarding_pass_screen/widgets/date_and_time_textField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FlightDetails extends StatefulWidget {
  const FlightDetails({Key? key}) : super(key: key);

  @override
  State<FlightDetails> createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  String? currentLanguage;
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  DateTime date = DateTime.now();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '5.50',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'DEL',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        height: 2,
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
                children: const [
                  Text(
                    '7.30',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'CCU',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: const [
            Expanded(
              flex: 1,
              child: Text(
                'Indira Gandhi International Airport',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 1,
              child: Text(
                'Subhash Chandra Bose International Airport',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: pickedDateFun,
                child: TimeAndDateTextField(
                  label: 'Date'.tr().toString(),
                  iconData: Icons.date_range_outlined,
                  textValue: formattedDate,
                  controller: dateController,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: TimeAndDateTextField(
                  label: 'Time'.tr().toString(),
                  iconData: Icons.access_time_outlined,
                  textValue: '9.30',
                  controller: timeController,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: kContainerBorderColor,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flight'.tr().toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'IN 230',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gate'.tr().toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '22',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seat'.tr().toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '2B',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Class'.tr().toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Economy'.tr().toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Provider.of<ThemeServices>(context).mode ==
                              ThemeMode.dark
                          ? kLightColor
                          : kDarkColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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

  @override
  void initState() {
    super.initState();
    dateController.text = formattedDate;
    timeController.text = '9.30';
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
