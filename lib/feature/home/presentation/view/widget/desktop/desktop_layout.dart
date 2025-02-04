import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/custom_appbar.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/personal_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/skill/skills.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/works.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final controller = Get.find<HomePageControllerImp>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbar(
            index: (index) {
              controller.soctrol(keys: controller.currectKey(index));
            },
          ),
          const SizedBox(height: 128),
          PersonalIntroduction(key: controller.keyHome),
          const SizedBox(height: 128),
          AboutUs(key: controller.keyAbouteUs),
          const SizedBox(height: 128),
          Skills(key: controller.keySkills),
          const SizedBox(height: 128),
          Works(key: controller.keyWorks),
          const SizedBox(height: 128),
          Contact(key: controller.keyContacts),
          const SizedBox(height: 128),
        ],
      ),
    );
  }
}
