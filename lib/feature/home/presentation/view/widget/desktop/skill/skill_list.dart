import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/skill_item_model.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/core/utils/key_language.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/skill/skill_item.dart';

class SkillList extends StatelessWidget {
  const SkillList({super.key});
  static const List<SkillItemModel> items = [
    SkillItemModel(
      title: KeyLanguage.flutter,
      image: AppImage.imagesFlutter,
      color: Colors.green,
      value: 75,
    ),
    SkillItemModel(
      title: KeyLanguage.dart,
      image: AppImage.imagesDart,
      color: Colors.white,
      value: 82,
    ),
    SkillItemModel(
      title: KeyLanguage.database,
      image: AppImage.imagesMysql,
      color: Colors.brown,
      value: 65,
    ),
    SkillItemModel(
      title: KeyLanguage.mvvm,
      image: AppImage.imagesMvvm,
      color: Colors.white,
      value: 87,
    ),
    SkillItemModel(
      title: KeyLanguage.firebase,
      image: AppImage.imagesFirebase,
      color: Colors.teal,
      value: 66,
    ),
    SkillItemModel(
      title: KeyLanguage.git,
      image: AppImage.imagesGit,
      color: Colors.deepOrange,
      value: 60,
    ),
    SkillItemModel(
      title: KeyLanguage.github,
      image: AppImage.imagesGithub,
      color: Colors.white,
      value: 67,
    ),
    SkillItemModel(
      title: KeyLanguage.php,
      image: AppImage.imagesPhp,
      color: Color(0xff787CB4),
      value: 45,
    ),
    SkillItemModel(
      title: KeyLanguage.postman,
      image: AppImage.imagesPostman,
      color: Colors.deepOrange,
      value: 80,
    ),
    SkillItemModel(
      title: KeyLanguage.java,
      image: AppImage.imagesJava,
      color: Color(0xff787CB4),
      value: 80,
    ),
    SkillItemModel(
      title: KeyLanguage.cpp,
      image: AppImage.imagesCpp,
      color: Color(0xff085e9f),
      value: 80,
    ),
    SkillItemModel(
      title: KeyLanguage.c,
      image: AppImage.imagesC,
      color: Color(0xff085e9f),
      value: 80,
    ),
    SkillItemModel(
      title: KeyLanguage.arduino,
      image: AppImage.imagesArduino,
      color: Colors.white,
      value: 80,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double size = ConstantScale.calculateResponsiveSize(
      context,
      minSize: 80,
      maxSize: 110,
      multiplier: 0.15,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Wrap(
        runSpacing: -2 * 75 + size,
        spacing: 16,
        alignment: WrapAlignment.center,
        children: items
            .map(
              (e) => SizedBox(
                height: 204,
                width: size,
                child: SkillItem(data: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
