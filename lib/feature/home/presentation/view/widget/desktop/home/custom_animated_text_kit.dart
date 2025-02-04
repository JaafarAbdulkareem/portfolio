import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class CustomAnimatedTextKit extends StatelessWidget {
  const CustomAnimatedTextKit({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      isRepeatingAnimation: true,
      animatedTexts: [
        TyperAnimatedText(
          curve: Curves.linear,
          speed: const Duration(milliseconds: 60),
          KeyLanguage.mobileFlutter.tr(context),
          textStyle: AppStyles.styleUbuntuRegular20(context).copyWith(
            color: Colors.white,
            fontSize: getResponsiveFontSize(
              context,
              fontSize: width > 425
                  ? 25
                  : width > 350
                      ? 18
                      : 16,
            ),
          ),
        ),
        TyperAnimatedText(
          curve: Curves.linear,
          speed: const Duration(milliseconds: 60),
          KeyLanguage.beautyResponsive.tr(context),
          textStyle: AppStyles.styleUbuntuRegular20(context).copyWith(
            color: Colors.white,
            fontSize: getResponsiveFontSize(
              context,
              fontSize: width > 425
                  ? 25
                  : width > 350
                      ? 18
                      : 16,
            ),
          ),
        ),
        TyperAnimatedText(
          curve: Curves.linear,
          speed: const Duration(milliseconds: 60),
          KeyLanguage.crossPlatform.tr(context),
          textStyle: AppStyles.styleUbuntuRegular20(context).copyWith(
            color: Colors.white,
            fontSize: getResponsiveFontSize(
              context,
              fontSize: width > 425
                  ? 25
                  : width > 350
                      ? 18
                      : 16,
            ),
          ),
        ),
      ],
    );
  }
}
