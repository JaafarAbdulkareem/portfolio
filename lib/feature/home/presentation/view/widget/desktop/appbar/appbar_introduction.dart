import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_lottie.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_text.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class AppbarIntroduction extends StatelessWidget {
  const AppbarIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      isWithPress: false,
      cursor: MouseCursor.defer,
      child: (isHaver) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(width: 2),
          Lottie.asset(AppLottie.flutterLogo),
          const SizedBox(width: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              KeyLanguage.myName.tr(context),
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
