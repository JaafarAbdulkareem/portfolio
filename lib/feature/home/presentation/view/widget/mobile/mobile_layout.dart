import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/appbar/custom_appbar_mobile.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/appbar/custom_drower.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageControllerImp>();
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: CustomAppbarMobile(controller: controller, width: width),
        ),
        const Center(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}

