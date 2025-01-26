import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_text.dart';

class FlutterTextCoder extends StatelessWidget {
  const FlutterTextCoder({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: AppStyles.styleUbuntuRegular20(context)
            .copyWith(color: AppColorText.primary),
        children: const [
          TextSpan(text: ConstantText.lessArrowSymble),
          TextSpan(
            text: ConstantText.flutter,
            style: TextStyle(
              color: AppColorText.secondard ,
            ),
          ),
          TextSpan(text: ConstantText.bigArrowSymble),
        ],
      ),
    );
  }
}
