import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/flutter_text_coder.dart';

class BodyAboutUs extends StatelessWidget {
  const BodyAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 680,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          decoration: ShapeDecoration(
            color: AppColor.cardBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FlutterTextCoder(),
              const SizedBox(height: 16),
              SizedBox(
                width: 800,
                child: Text.rich(
                  textAlign: TextAlign.justify,
                  TextSpan(
                    style: const TextStyle(height: 1.8),
                    children: [
                      TextSpan(
                        text: '${KeyLanguage.hello.tr(context)} \n',
                        style: AppStyles.styleIBMMedium32(context)
                            .copyWith(color: AppColor.primary),
                      ),
                      TextSpan(
                        text: KeyLanguage.myNameIs.tr(context),
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: KeyLanguage.myName.tr(context),
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      TextSpan(
                        text:
                            '${KeyLanguage.and.tr(context)} ${KeyLanguage.iMobileApp.tr(context)}',
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: KeyLanguage.flutter.tr(context),
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      TextSpan(
                        text: KeyLanguage.myExpertise.tr(context),
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: KeyLanguage.android.tr(context),
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      TextSpan(
                        text: KeyLanguage.and.tr(context),
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: KeyLanguage.ios.tr(context),
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.aboutPlatform.tr(context)}\n',
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.cleanCode.tr(context)}\n',
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.inAddition.tr(context)}\n',
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.myObjective.tr(context)}\n\n\n',
                        style: AppStyles.styleIBMRegular16(context),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.bestRegards.tr(context)}\n',
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                      TextSpan(
                        text: '${KeyLanguage.myName.tr(context)}\n',
                        style: AppStyles.styleIBMRegular16(context).copyWith(
                          color: AppColor.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const FlutterTextCoder(),
            ],
          ),
        ),
      ],
    );
  }
}
