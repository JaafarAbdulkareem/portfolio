import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/vibrating_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/appbar_contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/body_objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/download_cv.dart';

class ObjectiveIntroduction extends StatelessWidget {
  const ObjectiveIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyObjectiveIntroduction(),
        SizedBox(height: 24),
        AppbarContact(),
        SizedBox(height: 24),
        VibratingWidget(
          waitingSecond: 3,
          vibrateCount: 10,
          child: DownloadCv(),
        ),
        SizedBox(height: 58 - 24),
      ],
    );
  }
}
