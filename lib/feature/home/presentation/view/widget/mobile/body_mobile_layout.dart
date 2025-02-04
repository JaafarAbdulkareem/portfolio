import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/skill/skills.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/works.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/about_us/mobile_about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/contact/mobile_contact.dart';
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
          MobileAboutUs(key: controller.keyAbouteUs),
          const SizedBox(height: 64),
          Skills(key: controller.keySkills),
          const SizedBox(height: 64),
          Works(key: controller.keyWorks),
          const SizedBox(height: 64),
          MobileContact(key: controller.keyContacts),
          const SizedBox(height: 64),
        ],
      ),
    );
  }
}
