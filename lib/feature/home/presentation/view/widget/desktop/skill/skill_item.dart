import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/models/skill_item_model.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/core/utils/constant_text.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    super.key,
    required this.data,
  });
  final SkillItemModel data;
  @override
  Widget build(BuildContext context) {
    double size = ConstantScale.calculateResponsiveSize(
      context,
      minSize: 30,
      maxSize: 75,
      multiplier: 0.1,
    );

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: data.value / 100),
            duration: const Duration(milliseconds: 10000),
            builder: (context, value, child) => Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  strokeWidth: 12,
                  color: AppColor.percentage,
                ),
                CircleAvatar(
                  backgroundColor: data.color,
                  child: SvgPicture.asset(
                    data.image,
                    // width: 100,
                    height: size,
                  ),
                ),
                Center(
                  child: Text(
                    '${(value * 100).toInt()} ${ConstantText.precentage}',
                    style: AppStyles.styleIBMRegular24(context).copyWith(
                      color: AppColor.percentage,
                      fontWeight: FontWeight.bold,
                      backgroundColor: const Color(0x839E9E9E),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 6),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.center,
          child: Text(
            data.title,
            style: AppStyles.styleIBMRegular16(context)
                .copyWith(color: data.color, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );

    // Column(
    //   mainAxisSize: MainAxisSize.min,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     CircleAvatar(
    //       radius: size / 1.2,
    //       backgroundColor: data.color,
    //       child: SvgPicture.asset(
    //         data.image,
    //         height: size / 1.3,
    //         width: size / 1.3,
    //       ),
    //     ),
    //     const SizedBox(height: 24),
    //     Text(
    //       data.title,
    //       style:
    //           AppStyles.styleIBMMedium32(context).copyWith(color: data.color),
    //     ),
    //   ],
    // );
  }
}
