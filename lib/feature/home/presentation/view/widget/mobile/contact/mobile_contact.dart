import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/header_title_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/mobile/contact/mobile_contact_card.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderTitleWidget(title: KeyLanguage.contact),
        SizedBox(height: 32),
        MobileContactCard(),
      ],
    );
  }
}
