import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/about_us/about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/custom_appbar.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/contact/contact.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/personal_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/skill/skills.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/works/works.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final controller = Get.find<HomePageComtrollerImp>();
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
