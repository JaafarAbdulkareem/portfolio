import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class BuildMenuItemContent extends StatelessWidget {
  const BuildMenuItemContent({
    super.key,
    required this.controller,
    required this.icon,
    required this.color,
    required this.label,
    required this.index,
  });
  final HomePageControllerImp controller;
  final IconData icon;
  final Color color;
  final String label;
  final int index;
  @override
  Widget build(BuildContext context) {
    //
    return InkWell(
      splashColor:  AppColor.primary, // Remove splash effe ctColor(0xff292F36)
      highlightColor:AppColor.cardBackground, // Remove highlight effect
      onTap: () {
        controller.soctrol(keys: controller.currectKey(index));
      },
      child: ListTile(
        leading: Icon(
          icon,
          color: color, // CSS (Blue Accent)
        ),
        title: Text(
          label.tr(context),
          style: AppStyles.styleIBMRegular24(context).copyWith(
            color: color, // White text color
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
