import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:book_flight_app/core/basics_widgets/custom_textField.dart';
import 'package:book_flight_app/core/basics_widgets/custom_time_and_date_textField.dart';
import 'package:book_flight_app/core/services/theme_service/theme/theme/base_theme_extension.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class FlightSelectionWidget extends StatefulWidget {
  const FlightSelectionWidget({Key? key}) : super(key: key);

  @override
  State<FlightSelectionWidget> createState() => _FlightSelectionWidgetState();
}

class _FlightSelectionWidgetState extends State<FlightSelectionWidget> {
  String? currentLanguage;
  String deFormattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String? reFormattedDate;
  DateTime date = DateTime.now();
  int numOfAdult = 1;
  int numOfChildren = 0;
  String? numOfTravellers;
  TextEditingController deDateController = TextEditingController();
  TextEditingController reDateController = TextEditingController();
  TextEditingController travellerController = TextEditingController();
  TextEditingController classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 5.0,
              color:  kDarkColor.withOpacity(0.5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 22.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 140,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: kContainerBorderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12.0,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/flight_from.svg',
                                          color: kGreyColor,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Delhi',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.apply(
                                                        fontWeightDelta: 2,
                                                        color: kDarkColor,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'DEL',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineSmall
                                                      ?.apply(
                                                        fontWeightDelta: 1,
                                                        color: kGreyColor,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Indira Gandhi International Airport',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge
                                                  ?.apply(
                                                    color: Colors.grey,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: (currentLanguage == 'en_EN')
                                    ? 15
                                    : MediaQuery.of(context).size.width * 0.74,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: (currentLanguage == 'en_EN') ? 40 : 30,
                                  height: 20,
                                  child: Center(
                                    child: Text(
                                      'From'.tr().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            color: kGreyColor,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: kContainerBorderColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12.0,
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/flight_to.svg',
                                          color: kGreyColor,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Kolkata',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.apply(
                                                        fontWeightDelta: 2,
                                                        color: kDarkColor,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'CCU',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineSmall
                                                      ?.apply(
                                                        fontWeightDelta: 1,
                                                        color: kGreyColor,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              'Subhash Chandra International Airport',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge
                                                  ?.apply(
                                                    color: Colors.grey,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: (currentLanguage == 'en_EN')
                                    ? 15
                                    : MediaQuery.of(context).size.width * 0.74,
                                top: -10,
                                child: Container(
                                  color: Colors.white,
                                  width: 25,
                                  height: 20,
                                  child: Center(
                                    child: Text(
                                      'To'.tr().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.apply(
                                            color: kGreyColor,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: (currentLanguage == 'en_EN')
                          ? MediaQuery.of(context).size.width / 1.5
                          : 20,
                      right: (currentLanguage == 'ar_AR')
                          ? MediaQuery.of(context).size.width / 1.5
                          : 20,
                      bottom: 42,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: kContainerBorderColor,
                          ),
                        ),
                        child: Center(
                          child: Transform.rotate(
                            angle: -math.pi / 2,
                            child: const Icon(
                              CupertinoIcons.arrow_right_arrow_left,
                              color: kDarkColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: dePickedDateFun,
                      child: CustomTimeAndDateTextField(
                        label: 'Departure'.tr().toString(),
                        iconData: Icons.date_range_outlined,
                        textValue: deFormattedDate,
                        controller: deDateController,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: rePickedDateFun,
                      child: CustomTimeAndDateTextField(
                        label: 'Return'.tr().toString(),
                        iconData: CupertinoIcons.plus,
                        textValue: reFormattedDate ??
                            'Add_Return_Date'.tr().toString(),
                        controller: reDateController,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16.0),
                        topLeft: Radius.circular(16.0),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height > 700
                              ? MediaQuery.of(context).size.height / 2.5
                              : MediaQuery.of(context).size.height / 2,
                          child: Builder(builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (context, setState) => Padding(
                                padding: const EdgeInsets.only(
                                  left: 24.0,
                                  right: 24.0,
                                  top: 24.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Traveller'.tr().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.apply(
                                            fontWeightDelta: 1,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Adult'.tr().toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.apply(
                                                    fontWeightDelta: -1,
                                                  ),
                                            ),
                                            Text(
                                              '${'Age'.tr().toString()} +18',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.apply(
                                                    fontWeightDelta: -1,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .themeColors
                                                  .primaryColor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      numOfAdult--;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    CupertinoIcons.minus,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                ),
                                                Text(
                                                  numOfAdult > 1
                                                      ? numOfAdult.toString()
                                                      : '1',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      numOfAdult++;
                                                      debugPrint(numOfAdult
                                                          .toString());
                                                    });
                                                  },
                                                  child: const Icon(
                                                    CupertinoIcons.plus,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Children'.tr().toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.apply(
                                                    fontWeightDelta: -1,
                                                  ),
                                            ),
                                            Text(
                                              '${'Age'.tr().toString()} 0 - 17',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.apply(
                                                    fontWeightDelta: -1,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          width: 100,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color:
                                                    Theme.of(context).themeColors.primaryColor,),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      numOfChildren--;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    CupertinoIcons.minus,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                ),
                                                Text(
                                                  numOfChildren > 0
                                                      ? numOfChildren.toString()
                                                      : '0',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      numOfChildren++;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    CupertinoIcons.plus,
                                                    color: Colors.grey,
                                                    size: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Material(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(12),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(12),
                                        onTap: () {
                                          setState(() {
                                            if (numOfChildren == 0) {
                                              travellerController.text =
                                                  '${numOfAdult.toString()} Adult';
                                            } else {
                                              travellerController.text =
                                                  '${numOfAdult.toString()} Adult, ${numOfChildren.toString()} Children';
                                            }
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: const CustomButton(
                                          title: 'Done',
                                          titleColor: kLightColor,
                                          height: 40,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancel'.tr().toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.apply(
                                              fontWeightDelta: 1,
                                              color: kPrimaryColor,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  );
                },
                child: CustomTextField(
                  label: 'Traveller'.tr().toString(),
                  controller: travellerController,
                  textValue:
                      '${numOfAdult > 1 ? '$numOfAdult ' : '1 '}${'Adult'.tr().toString()}',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: 'Class'.tr().toString(),
                controller: classController,
                textValue: 'Economy'.tr().toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              Material(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.pushNamed(context, 'searchScreen');
                  },
                  child: CustomButton(
                    title: 'Search'.tr().toString(),
                    titleColor: kLightColor,
                    height: 56,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    deDateController.text = deFormattedDate;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
  }

  dePickedDateFun() async {
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
        deFormattedDate = DateFormat('yyyy-MM-dd').format(date);
        deDateController.text = deFormattedDate;
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }

  rePickedDateFun() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.parse(deFormattedDate),
        firstDate: DateTime.parse(deFormattedDate),
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
        reFormattedDate = DateFormat('yyyy-MM-dd').format(date);
        reDateController.text = reFormattedDate!;
      });
    } else {
      debugPrint('It\'s null or something is wrong');
    }
  }
}
