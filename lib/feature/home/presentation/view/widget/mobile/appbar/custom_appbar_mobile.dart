import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/animation_widget/animated_icon_switcher.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/appbar_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/appbar/appbar_introduction_mobile.dart';

class CustomAppbarMobile extends StatelessWidget {
  const CustomAppbarMobile({
    super.key,
    required this.controller,
    required this.width,
  });

  final HomePageControllerImp controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {
          controller.changeDrawerIcon();
        }, icon: GetBuilder<HomePageControllerImp>(
          builder: (controllerChangeIcon) {
            return AnimatedIconSwitcher(
              currentIcon: controllerChangeIcon.icon,
              duration: const Duration(milliseconds: 350),
              iconColor: AppColor.secondard,
            );
          },
        )),
        const Spacer(),
        Center(
          child: width < ConstantScale.tablet
              ? const AppbarIntroductionMobile()
              : const AppbarIntroduction(),
        ),
        const Spacer(),
      ],
    );
  }
}
