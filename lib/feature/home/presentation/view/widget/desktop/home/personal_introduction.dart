import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/bouncing_animation_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/work_introduction.dart';
import 'package:my_portfolio/core/animation_widget/flip_card_widget.dart';

class PersonalIntroduction extends StatelessWidget {
  const PersonalIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 60,
        bottom: 128,
        left: 34,
        right: 34,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 24),
          Flexible(child: ObjectiveIntroduction()),
          SizedBox(width: 24),
          FlipCardWidget(
            frontend: BouncingAnimationWidget(
              child: InformationDeveloper(),
            ),
            backend: WorkIntroduction(),
          ),
          SizedBox(width: 24),
        ],
      ),
    );
  }
}
