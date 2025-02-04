import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/adaptive_layout.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/desktop_layout.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/mobile_layout.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controller = Get.put(HomePageControllerImp());

    return Scaffold(
      key: controller.scaffoldState,
      body: SafeArea(
        child:
            // const DesktopLayout(),
            AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ),
      ),
    );
  }
}
