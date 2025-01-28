import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({
    super.key,
    required this.frontend,
    required this.backend,
  });
  final Widget frontend;
  final Widget backend;
  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _onMouseEnter(PointerEnterEvent event) {
    _controller.forward(); // Flip to back on hover
  }

  void _onMouseExit(PointerExitEvent event) {
    _controller.reverse(); // Flip back to front when hover ends
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onMouseEnter,
      onExit: _onMouseExit,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final isFrontVisible = _animation.value < 0.5;

          return Transform(
            alignment: Alignment.center,
            transform:
                Matrix4.rotationY(_animation.value * 3.14159), // Pi for 180°
            child: isFrontVisible
                ? widget.frontend
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(3.14159), // Rotate back face
                    child: widget.backend,
                  ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
