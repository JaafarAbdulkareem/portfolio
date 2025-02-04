import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      // required this.tabletLayout2,
      required this.desktopLayout,
      required this.mobileLayout});
  final WidgetBuilder mobileLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) { 
        log("${constraints.maxWidth+64} : ${MediaQuery.sizeOf(context).width}");
        if (constraints.maxWidth +64 < ConstantScale.desktop) {
          return mobileLayout(context);
        // } else if (constraints.maxWidth < ConstantScale.desktop) {
        //   return tabletLayout2(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
