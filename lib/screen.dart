import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/adaptive_layout.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/desktop_layout.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});
 
  @override
  Widget build(BuildContext context) {
    final HomePageComtrollerImp controller = Get.put(HomePageComtrollerImp());
    return  Scaffold(
      key: controller.scaffoldState,
      body: SafeArea(
        child:AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout2: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
        
      ),
    );
  }
}
