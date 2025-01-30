import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/about_us/header_title_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/works/body_works.dart';

class Works extends StatelessWidget {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderTitleWidget(title: KeyLanguage.works),
        const SizedBox(height: 16),
        Text(
          KeyLanguage.worksDescription.tr(context),
          textAlign: TextAlign.center,
          style: AppStyles.styleIBMRegular16(context),
        ),
       const SizedBox(height: 64),
        const BodyWorks(),
      ],
    );
  }
}
