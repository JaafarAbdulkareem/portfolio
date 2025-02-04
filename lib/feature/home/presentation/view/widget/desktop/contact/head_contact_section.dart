import 'package:flutter/material.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/contact/send_me_message_design.dart';

class HeadContactSection extends StatelessWidget {
  const HeadContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SendMeMessageDesign(),
        const SizedBox(height: 24),
        Text(
          KeyLanguage.contactDescription.tr(context),
          textAlign: TextAlign.center,
          style: AppStyles.styleUbuntuRegular20(context),
        ),
      ],
    );
  }
}