import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/app_localizations.dart';

extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
