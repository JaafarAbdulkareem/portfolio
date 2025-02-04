import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/skill/skills.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/works.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/about_us/mobile_about_us.dart';
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
          const SizedBox(height: 64),
          const MobileAboutUs(),
          const SizedBox(height: 64),
          const Skills(),
          const SizedBox(height: 64),
          const Works(),
          const SizedBox(height: 64),
          const Contact(),
          const SizedBox(height: 64),
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
    );
  }
}
