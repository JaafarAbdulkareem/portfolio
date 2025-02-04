import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/controller/controller.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/appbar/build_menu_item_content.dart';

class CustomDrawer extends GetView<HomePageControllerImp> {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) {
        return AnimatedOpacity(
          opacity: controller.icon == Icons.cancel ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500), // Fade-in/out duration
          child: controller.icon == Icons.cancel
              ? _buildDrawer(context) // Show drawer when icon is cancel
              : const SizedBox.shrink(),
        );
      },
    );
  }

  // Method to build the Custom Drawer
  Widget _buildDrawer(context) {
    return IntrinsicWidth(
      key: const ValueKey('CustomDrawer'), // Key to make AnimatedSwitcher work
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildMenuItem(context, Icons.home, KeyLanguage.home, 0),
          _buildMenuItem(context, Icons.person, KeyLanguage.aboutUs, 1),
          _buildMenuItem(context, Icons.star, KeyLanguage.skill, 2),
          _buildMenuItem(context, Icons.work, KeyLanguage.works, 3),
          _buildMenuItem(context, Icons.contact_mail, KeyLanguage.contact, 4),
        ],
      ),
    );
  }

  // Helper method for creating menu items with fade and slide animation
  Widget _buildMenuItem(
    BuildContext context,
    IconData icon,
    String label,
    int index,
  ) {
    return AnimatedButton(
      child: (isHaver) => TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500), // Animation duration
        builder: (context, value, child) {
          return Opacity(
            opacity: value, // Fade effect
            child: Transform.translate(
              offset: Offset(0, (1 - value) * 20), // Slide effect
              child: BuildMenuItemContent(
                controller: Get.find<HomePageControllerImp>(),
                icon: icon,
                color: isHaver! ? AppColor.primary : AppColor.secondard,
                label: label,
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
