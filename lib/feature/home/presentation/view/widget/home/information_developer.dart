import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/download_cv.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/information_developer_back_fro.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/home/information_developer_list.dart';

class InformationDeveloper extends StatelessWidget {
  const InformationDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFF292F36),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(160),
            bottomRight: Radius.circular(160),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xFF12F7D6),
            blurRadius: 2,
            offset: Offset(-4, -4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 58 - 24),
          CircleAvatar(
            backgroundColor: const Color(0xFF12F7D6),
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
          const Padding(
            padding: EdgeInsets.only(right: 0),
            child: DownloadCv(),
          ),
          const SizedBox(height: 58 - 24),
        ],
      ),
    );
  }
}