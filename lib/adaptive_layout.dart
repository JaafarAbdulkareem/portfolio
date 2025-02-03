import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.tabletLayout2,
      required this.desktopLayout,
      required this.mobileLayout});
  final WidgetBuilder mobileLayout, tabletLayout2, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < ConstantScale.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < ConstantScale.desktop) {
          return tabletLayout2(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
