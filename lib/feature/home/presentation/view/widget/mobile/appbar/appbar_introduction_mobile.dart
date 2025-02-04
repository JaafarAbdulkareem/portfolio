import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_text.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class AppbarIntroductionMobile extends StatelessWidget {
  const AppbarIntroductionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      isWithPress: false,
      cursor: MouseCursor.defer,
      child: (isHaver) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              ConstantText.cSymble,
              style: AppStyles.styleIBMRegular24(context).copyWith(
                color: AppColorText.secondard,
              ),
            ),
          ),
          const SizedBox(width: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              KeyLanguage.myFirstName.tr(context),
              style: AppStyles.styleIBMRegular24(context).copyWith(
                color: AppColorText.primary,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              ConstantText.semicaleSymble,
              style: AppStyles.styleIBMRegular24(context).copyWith(
                color: AppColorText.secondard,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
