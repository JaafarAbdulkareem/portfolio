import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class InformationDeveloperBackFro extends StatelessWidget {
  const InformationDeveloperBackFro({
    super.key,
    required this.name,
  });

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: ShapeDecoration(
        color: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        name,
        style: AppStyles.styleIBMRegular14(context).copyWith(
          color: AppColorText.third,
        ),
      ),
    );
  }
}
