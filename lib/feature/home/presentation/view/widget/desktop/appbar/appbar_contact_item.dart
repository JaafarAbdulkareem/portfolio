import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/models/appbar_contact_model.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class AppbarContactItem extends StatelessWidget {
  const AppbarContactItem({
    super.key,
    required this.data,
  });
  final AppbarContactModel data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          data.image,
          width: 20,
          height: 20,
          colorFilter: const ColorFilter.mode(
            AppColor.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          data.name,
          style: AppStyles.styleIBMRegular16(context),
        ),
      ],
    );
  }
}
