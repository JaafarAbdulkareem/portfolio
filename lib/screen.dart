import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/custom_appbar.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/personal_introduction.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Column(
        children: [
          CustomAppbar(),
          SizedBox(height: 32),
          PersonalIntroduction(),
        ],
      ),
      ),
    );
  }
}