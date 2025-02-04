import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/home_card_background_widget.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer_back_fro.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer_list.dart';

class InformationDeveloper extends StatelessWidget {
  const InformationDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeCardBackgroundWidget(
      child: Column(
        children: [
          const SizedBox(height: 58 - 24),
          CircleAvatar(
            backgroundColor: AppColor.primary,
            radius: 63,
            child: CircleAvatar(
              radius: 60,
              child: ClipOval(
                child: SvgPicture.asset(AppImage.imagesPortfolio1,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            KeyLanguage.flutterDeveloper.tr(context),
            style: AppStyles.styleIBMRegular14(context),
          ),
          const SizedBox(height: 32),
          const InformationDeveloperList(),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InformationDeveloperBackFro(name: KeyLanguage.frontend),
              SizedBox(width: 16),
              InformationDeveloperBackFro(name: KeyLanguage.backend)
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
