import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/fill_liquid_svg_button_widget.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_file.dart';
import 'package:my_portfolio/core/utils/file_utils.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';

class DownloadCv extends StatelessWidget {
  const DownloadCv({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      child: (isHaver) => FillLiquidSvgButtonWidget(
        mainColor: AppColor.secondard,
        fillColor: AppColor.primary,
        text: KeyLanguage.download,
        style: AppStyles.styleUbuntuRegular20(context),
        image: AppImage.imagesDownload,
        onPressed: () {
          downloadCV(context);
        },
      ),
    );
  }

  void downloadCV(BuildContext context) async {
    try {
      await FileUtils.downloadAssetFile(
        ConstantFile.pathFileCV,
        ConstantFile.newName,
      );
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            KeyLanguage.successfully.tr(context),
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '${KeyLanguage.successfully.tr(context)}: $e',
          ),
        ),
      );
    }
  }
}
