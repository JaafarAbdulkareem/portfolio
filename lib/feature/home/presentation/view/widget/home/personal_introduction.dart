import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widget/bouncing_animation_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/information_developer.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/objective_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/work_introduction.dart';

class PersonalIntroduction extends StatelessWidget {
  const PersonalIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 60, bottom: 128, left: 34, right: 34),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkIntroduction(),
          SizedBox(width: 24),
          Flexible(child: ObjectiveIntroduction()),
          SizedBox(width: 24),
          BouncingAnimationWidget(child: InformationDeveloper(),),
      
        ],
      ),
    );
  }
}
