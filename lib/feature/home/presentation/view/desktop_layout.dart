import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/about_us/about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/custom_appbar.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/personal_introduction.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/skill/skills.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAppbar(),
          SizedBox(height: 32),
          PersonalIntroduction(),
          SizedBox(height: 32),
          AboutUs(),
          SizedBox(height: 32),
          Skills(),
          
        ],
      ),
    );
  }
}
