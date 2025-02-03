import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/about_us/header_title_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/contact/contact_card.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderTitleWidget(title: KeyLanguage.contact),
        SizedBox(height: 64),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 128),
          child: ContactCard(),
        ),
      ],
    );
  }
}
