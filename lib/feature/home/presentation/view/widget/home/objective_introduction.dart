import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/appbar_contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/body_objective_introduction.dart';

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
      ],
    );
  }
}
