import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          decoration: const ShapeDecoration(
            color: AppColor.cardBackground,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 4,
                color: AppColor.primary,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.tr(context),
                style: AppStyles.styleUbuntuRegular45(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
