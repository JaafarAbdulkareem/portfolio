import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/models/work_introduction_model.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class WorkIntroductionItem extends StatelessWidget {
  const WorkIntroductionItem({
    super.key,
    required this.data,
  });
  final WorkIntroductionModel data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            data.number.toString(),
            style: AppStyles.styleIBMMedium48(context),
          ),
        ),
        const SizedBox(width: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            data.text.tr(context),
            style: AppStyles.styleIBMRegular16(context),
          ),
        ),
      ],
    );
  }
}
