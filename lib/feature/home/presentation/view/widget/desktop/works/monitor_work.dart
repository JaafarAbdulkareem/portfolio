import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/animation_widget/hover_sun_animation.dart';
import 'package:my_portfolio/core/utils/app_image.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/core/utils/constant_social_media.dart';
import 'package:my_portfolio/core/utils/url_launcher.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/expandable_page_view.dart';

class MonitorWork extends StatelessWidget {
  const MonitorWork({
    super.key,
    required this.pageController,
  });

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    double minBoxSize = ConstantScale.calculateResponsiveSize(
      context,
      minSize: 200,
      maxSize: 300,
      multiplier: 0.4, // 40% of screen width
    );

    double maxBoxSize = ConstantScale.calculateResponsiveSize(
      context,
      minSize: 200,
      maxSize: 300,
      multiplier: 0.6, // 60% of screen width
    );
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: [
        FittedBox(
          child: AnimatedButton(
            child: (isHaver) => GestureDetector(
              onTap: () {
                UrlLauncher.websiteUrl(ConstantSocialMedia.githubECommerce);
              },
              child: HoverSunAnimation(
                child: _buildProjectImage(
                  AppImage.imagesEcommerce,
                  minBoxSize,
                  maxBoxSize,
                ),
              ),
            ),
          ),
        ),
        FittedBox(
          child: AnimatedButton(
            child: (isHaver) => GestureDetector(
              onTap: () {
                UrlLauncher.websiteUrl(ConstantSocialMedia.githubNote);
              },
              child: HoverSunAnimation(
                child: _buildProjectImage(
                  AppImage.imagesNoteApp,
                  minBoxSize,
                  maxBoxSize,
                ),
              ),
            ),
          ),
        ),
        FittedBox(
          child: AnimatedButton(
            child: (isHaver) => GestureDetector(
              onTap: () {
                UrlLauncher.websiteUrl(ConstantSocialMedia.githubBookly);
              },
              child: HoverSunAnimation(
                child: _buildProjectImage(
                  AppImage.imagesBookly,
                  minBoxSize,
                  maxBoxSize,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Helper function to build project images with responsive constraints

  Widget _buildProjectImage(String assetPath, double minSize, double maxSize) {
    return ConstrainedBox(
      constraints:  BoxConstraints(
          minWidth: minSize,
          maxWidth: maxSize,
          minHeight: minSize,
          maxHeight: maxSize,
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.asset(
          assetPath,
          // fit: BoxFit.fill,
        ),
      ),
    );
    // return ConstrainedBox(
    //   constraints: BoxConstraints(
    //     minWidth: minSize,
    //     maxWidth: maxSize,
    //     minHeight: minSize,
    //     maxHeight: maxSize,
    //   ),
    //   child: SvgPicture.asset(assetPath),
    // );
  }
}
