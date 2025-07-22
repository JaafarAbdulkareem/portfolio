import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/animation_widget/bouncing_animation_widget.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_lottie.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_text.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/work_introduction.dart';
import 'package:my_portfolio/core/animation_widget/flip_card_widget.dart';

class PersonalIntroduction extends StatelessWidget {
  const PersonalIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        bottom: 128,
        left: 34,
        right: 34,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 24),
          const Flexible(
            child: ObjectiveIntroduction(),
          ),
          const SizedBox(width: 24),
          Column(
            children: [
              Text(
                ConstantText.downArrow * 5,
                style: AppStyles.styleUbuntuRegular45(context).copyWith(
                  color: AppColorText.secondard,
                ),
              ),
              const FlipCardWidget(
                frontend: BouncingAnimationWidget(
                  child: InformationDeveloper(),
                ),
                backend: WorkIntroduction(),
              ),
              Lottie.asset(
                AppLottie.developer,
                height: 450,
                width: 450,
              ),
            ],
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
