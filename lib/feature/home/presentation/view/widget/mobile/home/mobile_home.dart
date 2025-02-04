import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/bouncing_animation_widget.dart';
import 'package:my_portfolio/core/animation_widget/flip_card_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/work_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/home/mobile_body_objective_introduction.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        bottom: 64,
        top: 32,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlipCardWidget(
            frontend: BouncingAnimationWidget(
              child: InformationDeveloper(),
            ),
            backend: WorkIntroduction(),
          ),
          SizedBox(height: 64),
          MobileBodyObjectiveIntroduction(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
