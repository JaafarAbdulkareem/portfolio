import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/appbar_change.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/appbar_feature.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/appbar/appbar_introduction.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.index,
  });
  final Function(int) index;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppbarIntroduction(),
          AppbarFeature(index:index),
          const AppbarChange(),
        ],
      ),
    );
  }
}
