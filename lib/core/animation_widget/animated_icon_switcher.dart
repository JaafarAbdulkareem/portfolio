import 'package:flutter/material.dart';

class AnimatedIconSwitcher extends StatelessWidget {
  final IconData currentIcon;
  final Duration duration;
  final Color iconColor;

  const AnimatedIconSwitcher({
    super.key,
    required this.currentIcon,
    required this.duration,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration, // Duration of the icon transition
      transitionBuilder: (Widget child, Animation<double> animation) {
        // Applying smooth scale animation during the icon change
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Icon(
        currentIcon,
        key: ValueKey<IconData>(currentIcon), // Key to differentiate the icons
        color: iconColor,
      ),
    );
  }
}
