import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/home/mobile_home.dart';

class BodyMobileLayout extends StatelessWidget {
  const BodyMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageControllerImp>();
    return SingleChildScrollView(
              child: Column(
                children: [
                  MobileHome(key: controller.keyHome),
                  // TabletAboutMe(
                  //     key: controller.keyAbouteMe,
                  //     padding: 24,
                  //     isThereIcon: false),
                  // MobileSkils(key: controller.keySkills, padding: 24),
                  // DesktopWorks(
                  //     key: controller.keyWorks,
                  //     padding: 24,
                  //     isThereIcon: false),
                  // DesktopContacts(
                  //     key: controller.keyContacts,
                  //     padding: 24,
                  //     isThereIcon: false),
                ],
              ),
            )
          ;
  }
}