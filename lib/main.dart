import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/lang_constant.dart';
import 'package:my_portfolio/core/controller/language/localizations_delegates.dart';
import 'package:my_portfolio/screen.dart';
import 'package:device_preview/device_preview.dart';
// import 'package:rive/rive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await RiveNative.init();
  // runApp(const MyApp());
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //language
      localizationsDelegates: localizationsDelegates,
      supportedLocales: _supportedLocales,
      localeResolutionCallback: _localResolution,
      //
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData.dark(),
      home:
          // Scaffold(body: ),
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
