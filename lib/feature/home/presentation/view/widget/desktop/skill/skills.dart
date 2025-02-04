import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/header_title_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/skill/skill_list.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderTitleWidget(title: KeyLanguage.skill),
        SizedBox(height: 128),
        SkillList(),
      ],
    );
  }
}
