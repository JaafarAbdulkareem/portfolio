import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class SendMeMessageDesign extends StatelessWidget {
  const SendMeMessageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      decoration:const  ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: AppColor.cardBackground ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
      ),
      child: Text(
        'Send me a message',
        textAlign: TextAlign.center,
        style: AppStyles.styleIBMRegular24(context)
            .copyWith(color: AppColorText.third),
      ),
    );
  }
}
