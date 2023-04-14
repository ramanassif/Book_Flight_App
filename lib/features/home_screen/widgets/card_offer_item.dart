import 'package:book_flight_app/constants.dart';
import 'package:flutter/material.dart';

class CardOfferItem extends StatefulWidget {
  final int index;
  final String title;
  final Color color;
  final String offer;
  final String image;
  final String description;

  const CardOfferItem({
    Key? key,
    required this.index,
    required this.title,
    required this.color,
    required this.offer,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  State<CardOfferItem> createState() => _CardOfferItemState();
}

class _CardOfferItemState extends State<CardOfferItem> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 112,
        width: 260,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: (currentLanguage == 'en_EN')
                        ? const Radius.circular(8)
                        : const Radius.circular(0),
                    bottomLeft: (currentLanguage == 'en_EN')
                        ? const Radius.circular(8)
                        : const Radius.circular(0),
                    topRight: (currentLanguage == 'en_EN')
                        ? const Radius.circular(0)
                        : const Radius.circular(8),
                    bottomRight: (currentLanguage == 'en_EN')
                        ? const Radius.circular(0)
                        : const Radius.circular(8),
                  ),
                  color: widget.color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 40,
                      child: Image.asset(
                        widget.image,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.offer,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.apply(
                            fontWeightDelta: 1,
                            color: kDarkColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: (currentLanguage == 'en_EN')
                        ? const Radius.circular(0)
                        : const Radius.circular(8),
                    bottomLeft: (currentLanguage == 'en_EN')
                        ? const Radius.circular(0)
                        : const Radius.circular(8),
                    topRight: (currentLanguage == 'en_EN')
                        ? const Radius.circular(8)
                        : const Radius.circular(0),
                    bottomRight: (currentLanguage == 'en_EN')
                        ? const Radius.circular(8)
                        : const Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.0,
                      right: (currentLanguage == 'en_EN') ? 16.0 : 12.0,
                      top: 16.0,
                      bottom: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.description,
                        style:
                            Theme.of(context).textTheme.headlineMedium?.apply(
                                  fontWeightDelta: 1,
                                  color: kDarkColor,
                                ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Lorem ipsum dolor sit',
                        style: Theme.of(context).textTheme.headlineSmall?.apply(
                              color: kGreyColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Locale myLocale = Localizations.localeOf(context);
    currentLanguage = myLocale.toString();
    debugPrint('$myLocale'.toString());
  }
}
