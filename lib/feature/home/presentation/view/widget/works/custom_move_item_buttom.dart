import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';

class CustomMoveItemButtom extends StatelessWidget {
  const CustomMoveItemButtom({
    super.key,
    this.onTap,
    this.icon,
  });

  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double size = ConstantScale.calculateResponsiveSize(context,
        minSize: 20, maxSize: 60, multiplier: 0.07);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size, // Ensures the container remains square
        decoration: ShapeDecoration(
          color: AppColor.cardBackground ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size / 2), // Circular shape
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: AppColor.secondard,
            size: size * 0.5, // Icon size is proportional to container size
          ),
        ),
      ),
    );
  }
}
