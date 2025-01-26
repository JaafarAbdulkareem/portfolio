import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/work_introduction_model.dart';
import 'package:my_portfolio/core/widget/animated_button.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constant_work_personal.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/work_introduction_item.dart';

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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
            decoration: ShapeDecoration(
              color: AppColor.workBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
              shadows: const [
                BoxShadow(
                  color: AppColor.workShadow,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
