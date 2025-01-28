import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/vibrating_widget.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/appbar_contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/body_objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/download_cv.dart';

class ObjectiveIntroduction extends StatelessWidget {
  const ObjectiveIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          KeyLanguage.titleObejective.tr(context),
          style: AppStyles.styleIBMRegular14(context),
        ),
        const BodyObjectiveIntroduction(),
        const SizedBox(height: 24),
        const AppbarContact(),
        const SizedBox(height: 24),
        const VibratingWidget(
          waitingSecond: 5,
          vibrateCount: 5,
          child: DownloadCv(),
        ),
        const SizedBox(height: 58 - 24),
      ],
    );
  }
}
