import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_image.dart';

class SectionBackgroundImage extends StatelessWidget {
  const SectionBackgroundImage({
    super.key,
    this.padding = 24,
     this.image,
    required this.child,
  });
  final double padding;
  final String? image;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image??AppImage.imagesBackground1),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
