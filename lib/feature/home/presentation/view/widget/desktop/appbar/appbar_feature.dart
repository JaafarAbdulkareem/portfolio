import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class AppbarFeature extends StatelessWidget {
  const AppbarFeature({
    super.key,
    required this.index,
  });
  final Function(int) index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedButton(
          child: (isHaver) => TextButton(
            onPressed: () {
              index(0);
            },
            child: Text(
              KeyLanguage.home.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: isHaver! ? AppColorText.secondard : AppColorText.primary,
              ),
            ),
          ),
        ),
        AnimatedButton(
          child: (isHaver) => TextButton(
            onPressed: () {
              index(1);
            },
            child: Text(
              KeyLanguage.aboutUs.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: isHaver! ? AppColorText.secondard : AppColorText.primary,
              ),
            ),
          ),
        ),
        AnimatedButton(
          child: (isHaver) => TextButton(
            onPressed: () {
              index(2);
            },
            child: Text(
              KeyLanguage.skill.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: isHaver! ? AppColorText.secondard : AppColorText.primary,
              ),
            ),
          ),
        ),
        AnimatedButton(
          child: (isHaver) => TextButton(
            onPressed: () {
              index(3);
            },
            child: Text(
              KeyLanguage.works.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: isHaver! ? AppColorText.secondard : AppColorText.primary,
              ),
            ),
          ),
        ),
        AnimatedButton(
          child: (isHaver) => TextButton(
            onPressed: () {
              index(4);
            },
            child: Text(
              KeyLanguage.contact.tr(context),
              style: AppStyles.styleUbuntuRegular20(context).copyWith(
                color: isHaver! ? AppColorText.secondard : AppColorText.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
