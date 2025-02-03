import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class ValidatorFunction {
//  final BuildContext? context;

//   ValidatorFunction(this.context);

  static String? validatorEmpty(BuildContext context, value) {
    if (value!.trim().isEmpty) return KeyLanguage.canNotEmpty.tr(context);
    return null;
  }

  static String? validatorEmail(BuildContext context, value) {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (value!.trim().isEmpty) return KeyLanguage.canNotEmpty.tr(context);
    if (!emailRegex.hasMatch(value)) {
      return KeyLanguage.invalidEmail.tr(context);
    }
    return null;
  }
}
