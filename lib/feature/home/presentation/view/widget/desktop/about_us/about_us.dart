import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/foggy_widget.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/body_about_us.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/cat_image.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/header_title_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/about_us/section_background_image.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionBackgroundImage(
      child: Column(
        children: [
          HeaderTitleWidget(
            title: KeyLanguage.aboutUs,
          ),
          SizedBox(height: 24),
          CatImage(),
          SizedBox(height: 24),
          FoggyWidget(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: BodyAboutUs(),
            ),
          ),
        ],
      ),
    );
  }
}
