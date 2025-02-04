import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';

class HomeCardBackgroundWidget extends StatelessWidget {
  const HomeCardBackgroundWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantScale.cardHeight,
      width: ConstantScale.cardWidth,
      padding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: AppColor.cardBackground,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColor.secondard,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(160),
            bottomRight: Radius.circular(160),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColor.primary,
            blurRadius: 2,
            offset: Offset(-4, -4),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }
}
