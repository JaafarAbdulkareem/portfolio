import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_style.dart';

class HoverSunAnimation extends StatefulWidget {
  final Widget child; // The main content (button, text, etc.)
  final double sunSize; // Size of the sun animation
  final Duration animationDuration; // Duration of the animation
  final Color sunColor; // Color of the sun

  const HoverSunAnimation({
    super.key,
    required this.child,
    this.sunSize = 120.0,
    this.animationDuration = const Duration(milliseconds: 300),
    this.sunColor = const Color(0xFF97F9EB),
  });

  @override
  State<HoverSunAnimation> createState() => _HoverSunAnimationState();
}

class _HoverSunAnimationState extends State<HoverSunAnimation> {
  bool _isHovered = false;

  void _onEnter(PointerEvent details) {
    setState(() => _isHovered = true);
  }

  void _onExit(PointerEvent details) {
    setState(() => _isHovered = false);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Sun animation
          widget.child,
          AnimatedScale(
            scale: _isHovered ? 1.0 : 0.0,
            duration: widget.animationDuration,
            curve: Curves.linear,
            child: Container(
              width: widget.sunSize,
              height: widget.sunSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.sunColor.withOpacity(0.2),
                boxShadow: [
                  BoxShadow(
                    color: widget.sunColor.withOpacity(0.4),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          AnimatedScale(
            scale: _isHovered ? 1.0 : 0.0,
            duration: widget.animationDuration,
            child: Text(
              "View GitHub",
              style: AppStyles.styleUbuntuRegular20(context)
                  .copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
