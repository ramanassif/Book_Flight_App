import 'package:book_flight_app/constants.dart';
import 'package:book_flight_app/core/services/theme_service/theme_service.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                  'Payment'.tr().toString(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: kLight2GreyColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 60,
                                  child: Image.asset(
                                    'assets/images/indigo.png',
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.date_range_outlined,
                                  color: kGreyColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  '15/07/2022',
                                  style: TextStyle(
                                    color: kGreyColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
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
                          Expanded(
                            flex: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '5.50',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: kDarkColor,
                                        ),
                                      ),
                                      Text(
                                        'DEL',
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
                                              padding:
                                                  const EdgeInsets.all(4.0),
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
                                          color: kDarkColor,
                                        ),
                                      ),
                                      Text(
                                        'CCU',
                                        style: TextStyle(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: kContainerBorderColor,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text(
                                  'Total'.tr().toString(),
                                  style: const TextStyle(
                                    color: kDarkColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  '\$230',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
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
                      horizontal: 32.0,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card_number'.tr().toString(),
                          style: TextStyle(
                            color: Provider.of<ThemeServices>(context).mode ==
                                    ThemeMode.dark
                                ? kLightColor
                                : kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: '5300 0000 0000 0000',
                            focusColor: kPrimaryColor,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Card_holder_name'.tr().toString(),
                          style: TextStyle(
                            color: Provider.of<ThemeServices>(context).mode ==
                                    ThemeMode.dark
                                ? kLightColor
                                : kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: 'John Doe',
                            focusColor: kPrimaryColor,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVV'.tr().toString(),
                                    style: TextStyle(
                                      color: Provider.of<ThemeServices>(context)
                                                  .mode ==
                                              ThemeMode.dark
                                          ? kLightColor
                                          : kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const TextField(
                                    decoration: InputDecoration(
                                      hintText: '000',
                                      focusColor: kPrimaryColor,
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expiry_date'.tr().toString(),
                                    style: TextStyle(
                                      color: Provider.of<ThemeServices>(context)
                                                  .mode ==
                                              ThemeMode.dark
                                          ? kLightColor
                                          : kGreyColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const TextField(
                                    decoration: InputDecoration(
                                      hintText: '05/24',
                                      focusColor: kPrimaryColor,
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/mastercard.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/images/visa_card.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/images/american_express.png',
                          width: 30,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/images/PayPal-Logo.jpg',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'boardingPassScreen');
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel'.tr().toString(),
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
