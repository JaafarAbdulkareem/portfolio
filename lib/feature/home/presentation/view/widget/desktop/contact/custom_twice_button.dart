import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/animation_widget/fill_liquid_svg_button_widget.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';

class CustomTwiceButton extends StatelessWidget {
  const CustomTwiceButton({
    super.key, required this.clean, required this.send,
  });


final VoidCallback send;
final VoidCallback clean;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedButton(
          child: (bool? isHaver) => FillLiquidSvgButtonWidget(
            mainColor: AppColor.secondard,
            fillColor: AppColor.percentage,
            text: KeyLanguage.send,
            style: AppStyles.styleIBMRegular24(context),
            onPressed: send,
          ),
        ),
        const SizedBox(width: 24),
        AnimatedButton(
          child: (bool? isHaver) => FillLiquidSvgButtonWidget(
            mainColor: AppColor.percentage,
            fillColor: AppColor.secondard,
            text: KeyLanguage.clean,
            style: AppStyles.styleIBMRegular24(context),
            onPressed: clean,
          ),
        ),
      ],
    );
  }
}
