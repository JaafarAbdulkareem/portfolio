import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class MobileIBuilder extends StatelessWidget {
  const MobileIBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      KeyLanguage.iBuild.tr(context),
      style: AppStyles.styleUbuntuRegular20(context).copyWith(
        color: AppColorText.primary,
        fontSize: getResponsiveFontSize(context, fontSize: 25),
      ),
    );
  }
}
