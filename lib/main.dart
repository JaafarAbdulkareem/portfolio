import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/animation_widget/fill_liquid_svg_button_widget.dart';
import 'package:my_portfolio/core/controller/language/lang_constant.dart';
import 'package:my_portfolio/core/controller/language/localizations_delegates.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/screen.dart';
import 'package:my_portfolio/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //language
      localizationsDelegates: localizationsDelegates,
      supportedLocales: _supportedLocales,
      localeResolutionCallback: _localResolution,
      //
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData.dark(),
      home: 
      // Scaffold(body:  ),
      const Screen(),
    );
  }

  Locale? _localResolution(deviceLocale, supportedLocales) {
    for (Locale locale in supportedLocales) {
      if (deviceLocale != null &&
          deviceLocale.languageCode == locale.languageCode) {
        return deviceLocale;
      }
    }
    return supportedLocales.first;
  }

  List<Locale> get _supportedLocales {
    List<Locale> localesLanguage = [];
    for (String element in ConstantLang.langs) {
      localesLanguage.add(Locale(element));
    }
    return localesLanguage;
  }
}
