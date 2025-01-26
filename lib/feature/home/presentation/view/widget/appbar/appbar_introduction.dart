import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/animated_button.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
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
          Text(
            ConstantText.cSymble,
            style: AppStyles.styleIBMRegular24(context).copyWith(
              color: AppColorText.secondard,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            KeyLanguage.myName.tr(context),
            style: AppStyles.styleIBMRegular24(context).copyWith(
              color: AppColorText.primary,
            ),
          ),
          Text(
            ConstantText.semicaleSymble,
            style: AppStyles.styleIBMRegular24(context).copyWith(
              color: AppColorText.secondard,
            ),
          ),
        ],
      ),
    );
  }
}
