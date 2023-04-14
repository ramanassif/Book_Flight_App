import 'package:book_flight_app/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card_number'.tr().toString(),
            style: Theme.of(context).textTheme.headlineMedium?.apply(fontWeightDelta: 1,),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '5300 0000 0000 0000',
              hintStyle: Theme.of(context).textTheme.headlineMedium?.apply(color: const Color(0xffA6A6A6),),
              focusColor: kPrimaryColor,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Card_holder_name'.tr().toString(),
            style: Theme.of(context).textTheme.headlineMedium?.apply(fontWeightDelta: 1,),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'John Doe',
              hintStyle: Theme.of(context).textTheme.headlineMedium?.apply(color: const Color(0xffA6A6A6),),
              focusColor: kPrimaryColor,
              focusedBorder: const UnderlineInputBorder(
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
                      style: Theme.of(context).textTheme.headlineMedium?.apply(fontWeightDelta: 1,),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '000',
                        hintStyle: Theme.of(context).textTheme.headlineMedium?.apply(color: const Color(0xffA6A6A6),),
                        focusColor: kPrimaryColor,
                        focusedBorder: const UnderlineInputBorder(
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
                      style: Theme.of(context).textTheme.headlineMedium?.apply(fontWeightDelta: 1,),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '05/24',
                        hintStyle: Theme.of(context).textTheme.headlineMedium?.apply(color: const Color(0xffA6A6A6),),
                        focusColor: kPrimaryColor,
                        focusedBorder: const UnderlineInputBorder(
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
    );
  }
}
