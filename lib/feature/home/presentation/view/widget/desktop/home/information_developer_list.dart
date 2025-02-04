import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/information_developer_model.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/home/information_developer_item.dart';

class InformationDeveloperList extends StatelessWidget {
  const InformationDeveloperList({super.key});
  static const List<InformationDeveloperModel> data = [
    InformationDeveloperModel(
        image: AppImage.imagesMail, ),
    InformationDeveloperModel(
      image: AppImage.imagesMap,
      title: KeyLanguage.address,
    ),
    InformationDeveloperModel(
        image: AppImage.imagesBriefcase, title: KeyLanguage.timeWork,),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data
          .map(
            (e) => Column(
              children: [
                InformationDeveloperItem(data: e),
                const SizedBox(height: 16),
              ],
            ),
          )
          .toList(),
    );
  }
}
