import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/appbar_contact_model.dart';
import 'package:my_portfolio/core/utils/animated_button.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/constant_social_media.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/utils/url_launcher.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/appbar_contact_item.dart';

class AppbarContact extends StatelessWidget {
  const AppbarContact({super.key});
  static const List<AppbarContactModel> data = [
    AppbarContactModel(
      name: KeyLanguage.linkedin,
      image: AppImage.imagesLinkedin,
      url: ConstantSocialMedia.likedin,
    ),
    AppbarContactModel(
      name: KeyLanguage.github,
      image: AppImage.imagesGithub,
      url: ConstantSocialMedia.github,
    ),
    AppbarContactModel(
      name: KeyLanguage.whatsApp,
      image: AppImage.imagesWhatsapp,
      url: ConstantSocialMedia.whatsApp,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: data
          .map(
            (e) => AnimatedButton(
              child: (isHaver) {
                return GestureDetector(
                  onTap: () {
                    if (e.url == ConstantSocialMedia.whatsApp) {
                      UrlLauncher.whatsApp(e.url);
                    } else {
                      UrlLauncher.websiteUrl(e.url);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppbarContactItem(data: e),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }
}
