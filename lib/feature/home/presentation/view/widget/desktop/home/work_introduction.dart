import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/work_introduction_model.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/utils/constant_work_personal.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/home_card_background_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/work_introduction_item.dart';

class WorkIntroduction extends StatelessWidget {
  const WorkIntroduction({super.key});
  static List<WorkIntroductionModel> data = const [
    WorkIntroductionModel(
      number: ConstantWorkPersonal.experienceYear,
      text: KeyLanguage.experienceYear,
    ),
    WorkIntroductionModel(
      number: ConstantWorkPersonal.projectComplete,
      text: KeyLanguage.projectComplete,
    ),
    WorkIntroductionModel(
      number: ConstantWorkPersonal.stateManagement,
      text: KeyLanguage.stateManagement,
    ),
    WorkIntroductionModel(
      number: ConstantWorkPersonal.codeCommit,
      text: KeyLanguage.codeCommit,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      cursor: MouseCursor.defer,
      isWithPress: false,
      child: (isHaver) => Column(
        children: [
          HomeCardBackgroundWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: data
                  .map(
                    (e) => WorkIntroductionItem(data: e),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
