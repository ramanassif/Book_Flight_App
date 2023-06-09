import 'package:book_flight_app/core/basics_widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchResultItem extends StatefulWidget {
  final String airlineImage;
  final String startTime;
  final String endTime;

  const SearchResultItem({
    Key? key,
    required this.airlineImage,
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  State<SearchResultItem> createState() => _SearchResultItemState();
}

class _SearchResultItemState extends State<SearchResultItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, top: 16, bottom: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kContainerBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(widget.airlineImage),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'IN 230',
                        style:
                            Theme.of(context).textTheme.headlineMedium?.apply(
                                  fontWeightDelta: 1,
                                  color: kDarkColor,
                                ),
                      ),
                      const Spacer(),
                      Text(
                        '01 hr 40min',
                        style: Theme.of(context).textTheme.headlineSmall?.apply(
                              fontWeightDelta: 2,
                              color: kGreyColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                              widget.startTime,
                              style:
                                  Theme.of(context).textTheme.bodyLarge?.apply(
                                        color: kDarkColor,
                                      ),
                            ),
                            Text(
                              'DEL (Delhi)',
                              style:
                                  Theme.of(context).textTheme.titleLarge?.apply(
                                        fontWeightDelta: 1,
                                        color: kGreyColor,
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
                              widget.endTime,
                              style:
                                  Theme.of(context).textTheme.bodyLarge?.apply(
                                        color: kDarkColor,
                                      ),
                            ),
                            Text(
                              'CCU (Kolkata)',
                              style:
                                  Theme.of(context).textTheme.titleLarge?.apply(
                                        fontWeightDelta: 1,
                                        color: kGreyColor,
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: kContainerBorderColor,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                        height: 15,
                        child: SvgPicture.asset(
                          'assets/icons/sit_down.svg',
                          color: kGreyColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Business_Class'.tr().toString(),
                        style: Theme.of(context).textTheme.bodyMedium?.apply(
                              color: kGreyColor,
                            ),
                      ),
                      const Spacer(),
                      Text(
                        'From'.tr().toString(),
                        style: Theme.of(context).textTheme.bodyMedium?.apply(
                              color: kGreyColor,
                              fontWeightDelta: -1,
                            ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '\$230',
                        style: Theme.of(context).textTheme.bodyLarge?.apply(
                              color: kDarkColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'flightDetailsScreen');
                    },
                    child: CustomButton(
                        title: 'Check'.tr().toString(),
                        titleColor: kLightColor,
                        height: 40,
                        color: kPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
