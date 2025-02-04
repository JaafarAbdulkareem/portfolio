import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/custom_animated_text_kit.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/flutter_text_coder.dart';

class BodyObjectiveIntroduction extends StatelessWidget {
  const BodyObjectiveIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "${KeyLanguage.hello.tr(context)}\n",
                style: AppStyles.styleUbuntuRegular45(context),
              ),
              TextSpan(
                text: "${KeyLanguage.iam.tr(context)}\n",
                style: AppStyles.styleUbuntuRegular45(context).copyWith(
                  color: AppColorText.secondard,
                ),
              ),
              TextSpan(
                text: KeyLanguage.myName.tr(context),
                style: AppStyles.styleUbuntuRegular45(context),
              ),
              TextSpan(
                  text: "\n${KeyLanguage.flutterDeveloper.tr(context)}",
                  style: AppStyles.styleUbuntuRegular45(context)),
            ],
          ),
        ),
        Row(
          children: [
            if (width > ConstantScale.hiddenFlutterSymbol) ...{
              const FlutterTextCoder(),
              const SizedBox(width: 5),
            },
            Text(
              KeyLanguage.iBuild.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: AppColorText.primary,
                fontSize: getResponsiveFontSize(context, fontSize: 25),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: CustomAnimatedTextKit(width: width),
            ),
            if (width > ConstantScale.hiddenFlutterSymbol) ...{
              const SizedBox(width: 5),
              const FlutterTextCoder(),
            },
          ],
        ),
        const SizedBox(height: 40),
        Container(
          constraints: const BoxConstraints(maxWidth: 697),
          child: Text(
            KeyLanguage.introduction.tr(context),
            style: AppStyles.styleIBMRegular16(context).copyWith(height: 1.7),
          ),
        )
      ],
    );
  }
}
