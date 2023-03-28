import 'package:flutter/material.dart';

class ChooseSeatScreen extends StatefulWidget {
  const ChooseSeatScreen({Key? key}) : super(key: key);

  @override
  State<ChooseSeatScreen> createState() => _ChooseSeatScreenState();
}

class _ChooseSeatScreenState extends State<ChooseSeatScreen> {
  String? currentLanguage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: (currentLanguage == 'en_EN')
            ? TextDirection.ltr
            : TextDirection.rtl,
        child: Scaffold(
          body: Container(),
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
