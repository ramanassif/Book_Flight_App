import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/features/boarding_pass_screen/widgets/date_and_time_textField.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  String? _selectedTime;

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
                children: [
                  Text(
                    '5.50',
                    style:Theme.of(context).textTheme.displayLarge?.apply(fontSizeDelta: 4,),
                  ),
                  Text(
                    'DEL',
                    style:Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: -1,),
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
                children: [
                  Text(
                    '7.30',
                    style:Theme.of(context).textTheme.displayLarge?.apply(fontSizeDelta: 4,),
                  ),
                  Text(
                    'CCU',
                    style:Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: -1,),
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
          children: [
            Expanded(
              flex: 1,
              child: Text(
                'Indira Gandhi International Airport',
                textAlign: TextAlign.start,
                style:Theme.of(context).textTheme.headlineSmall?.apply(color: const Color(0xff666666),),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: Text(
                'Subhash Chandra Bose International Airport',
                textAlign: TextAlign.end,
                style:Theme.of(context).textTheme.headlineSmall?.apply(color: const Color(0xff666666),),
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
                onTap: pickedTimeFun,
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
                    style:Theme.of(context).textTheme.headlineSmall?.apply(fontWeightDelta: 1,),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'IN 230',
                    style:Theme.of(context).textTheme.displaySmall,
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
                    style:Theme.of(context).textTheme.headlineSmall?.apply(fontWeightDelta: 1,),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '22',
                    style:Theme.of(context).textTheme.displaySmall,
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
                    style:Theme.of(context).textTheme.headlineSmall?.apply(fontWeightDelta: 1,),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '2B',
                    style:Theme.of(context).textTheme.displaySmall,
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
                    style:Theme.of(context).textTheme.headlineSmall?.apply(fontWeightDelta: 1,),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Economy'.tr().toString(),
                    style:Theme.of(context).textTheme.displaySmall,
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
