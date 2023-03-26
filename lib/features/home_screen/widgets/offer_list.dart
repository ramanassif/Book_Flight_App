import 'package:book_flight_app/features/home_screen/widgets/card_offer_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OfferList extends StatefulWidget {
  const OfferList({Key? key}) : super(key: key);

  @override
  State<OfferList> createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {
  List<String> cardList = ['master_card', 'visa'];
  String? currentLanguage;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        bottom: 16.0,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 112,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return CardOfferItem(
              index: index,
              title: cardList[index],
              color: index == 0
                  ? const Color(0xffF2EBE1)
                  : const Color(0xffE6E1F2),
              offer: index == 0 ? '15% ${'OFF'.tr().toString()}' : '23% ${'OFF'.tr().toString()}',
              image: index == 0
                  ? 'assets/images/mastercard.png'
                  : 'assets/images/visa_card.png',
              description: index == 0
                  ? '15% ${'Discount_with_mastercard'.tr().toString()}'
                  : '23% ${'Discount_with_visaCard'.tr().toString()}',
            );
          },
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
