import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';
import 'package:my_portfolio/core/models/information_developer_model.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';
import 'package:my_portfolio/core/utils/constant_social_media.dart';

class InformationDeveloperItem extends StatelessWidget {
  const InformationDeveloperItem({
    super.key,
    required this.data,
  });
  final InformationDeveloperModel data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          data.image,
          width: 14,
          height: 14,
          colorFilter: const ColorFilter.mode(AppColor.primary, BlendMode.srcIn),
        ),
        const SizedBox(width: 16), // Add spacing between the icon and text
        Flexible(
          child: Text(
            data.title?.tr(context)??ConstantSocialMedia.email,
            style: AppStyles.styleIBMRegular14(context),
          ),
        ),
      ],
    );
  }
}
