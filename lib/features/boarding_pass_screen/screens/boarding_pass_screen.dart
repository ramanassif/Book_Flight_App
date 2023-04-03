import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BoardingPassScreen extends StatefulWidget {
  const BoardingPassScreen({Key? key}) : super(key: key);

  @override
  State<BoardingPassScreen> createState() => _BoardingPassScreenState();
}

class _BoardingPassScreenState extends State<BoardingPassScreen> {
  String? currentLanguage;
  String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  DateTime date = DateTime.now();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
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
                  'Boarding_Pass'.tr().toString(),
                  style: TextStyle(
                    color: Provider.of<ThemeServices>(context).mode ==
                            ThemeMode.dark
                        ? kLightColor
                        : kDarkColor,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 34,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/person.png'),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mr. John Doe',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Passenger',
                              style: TextStyle(
                                color: Color(0xff888888),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 48,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kContainerBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset('assets/images/indigo.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
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
                          child: GestureDetector(
                            onTap: pickedDateFun,
                            child: TextField(
                              enabled: false,
                              controller: dateController,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                prefix: Padding(
                                  padding: EdgeInsets.only(
                                    right: currentLanguage == 'en_EN' ? 4.0 : 0,
                                    left: currentLanguage == 'en_EN' ? 0 : 4.0,
                                  ),
                                  child: Transform.translate(
                                    offset: const Offset(0, 4),
                                    child: const Icon(
                                      Icons.date_range_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                labelText: 'Date'.tr().toString(),
                                hintText: formattedDate,
                                labelStyle: TextStyle(
                                  color: Provider.of<ThemeServices>(context)
                                              .mode ==
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
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            readOnly: true,
                            textAlignVertical: TextAlignVertical.center,
                            controller: timeController,
                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                              labelText: 'Time'.tr().toString(),
                              hintText: '9.30'.tr().toString(),
                              prefix: Padding(
                                padding: EdgeInsets.only(
                                  right: currentLanguage == 'en_EN' ? 4.0 : 0,
                                  left: currentLanguage == 'en_EN' ? 0 : 4.0,
                                ),
                                child: Transform.translate(
                                  offset: const Offset(0, 4),
                                  child: const Icon(
                                    Icons.access_time,
                                    size: 20,
                                  ),
                                ),
                              ),
                              labelStyle: TextStyle(
                                color:
                                    Provider.of<ThemeServices>(context).mode ==
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
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
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
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
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kGreyColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'IN 230',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kDarkColor,
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
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kGreyColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                '22',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kDarkColor,
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
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kGreyColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                '2B',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kDarkColor,
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
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kGreyColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Economy'.tr().toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kDarkColor,
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
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: kContainerBorderColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/barcode.png'),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'IND222B589659',
                          style: TextStyle(
                            color: Provider.of<ThemeServices>(context).mode ==
                                    ThemeMode.dark
                                ? kLightColor
                                : kDarkColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const CustomButton(
                        title: 'Download',
                        height: 56.0,
                        color: kPrimaryColor,
                        titleColor: kLightColor,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'homeScreen');
                      },
                      child: Text(
                        'Book_another_flight'.tr().toString(),
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
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
