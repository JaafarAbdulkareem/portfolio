import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/work_introduction.dart';

class PersonalIntroduction extends StatelessWidget {
  const PersonalIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        WorkIntroduction(),
        SizedBox(width: 24),
        Flexible(child: ObjectiveIntroduction()),
      ],
    );
  }
}
