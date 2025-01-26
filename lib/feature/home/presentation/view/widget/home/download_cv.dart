import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/file_utils.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/core/widget/animated_button.dart';

class DownloadCv extends StatelessWidget {
  const DownloadCv({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      child: (isHaver) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        decoration: ShapeDecoration(
          color: AppColor.secondard,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: GestureDetector(
          onTap: () async {
            try {
              await FileUtils.downloadAssetFile(
                'assets/file/cv.pdf', // Path to the PDF file in assets
                'flutter_CV.pdf', // Desired name of the file in storage
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
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                KeyLanguage.download.tr(context),
                style: AppStyles.styleUbuntuRegular20(context),
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(AppImage.imagesDownload)
            ],
          ),
        ),
      ),
    );
  }
}
