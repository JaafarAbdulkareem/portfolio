import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/appbar_change.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/appbar_feature.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar/appbar_introduction.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppbarIntroduction(),
          AppbarFeature(),
          AppbarChange(),
        ],
      ),
    );
  }
}
