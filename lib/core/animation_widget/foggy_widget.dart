// import 'package:flutter/material.dart';
// import 'dart:ui';

// class FoggyWidget extends StatefulWidget {
//   final Widget child;
//   final double blurStrength;

//   const FoggyWidget({
//     Key? key,
//     required this.child,
//     this.blurStrength = 10.0,
//   }) : super(key: key);

//   @override
//   _FoggyWidgetState createState() => _FoggyWidgetState();
// }

// class _FoggyWidgetState extends State<FoggyWidget> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => isHovered = true),
//       onExit: (_) => setState(() => isHovered = false),
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           // The child widget will be shown here, such as a Container, Button, etc.
//           widget.child,

//           // Apply fog (blur) effect only when not hovered
//           if (!isHovered)
//             Positioned.fill(
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(
//                     sigmaX: widget.blurStrength, sigmaY: widget.blurStrength),
//                 child: Container(
//                   color: Colors.transparent,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:ui';

class FoggyWidget extends StatefulWidget {
  final Widget child;
  final double blurStrength;

  const FoggyWidget({
    super.key,
    required this.child,
    this.blurStrength = 10.0,
  });

  @override
  State<FoggyWidget> createState() => _FoggyWidgetState();
}

class _FoggyWidgetState extends State<FoggyWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Stack(
        // clipBehavior: Clip.antiAlias ,
        children: [
          // Only the child widget (BodyAboutUs) will have the fog effect
          widget.child,

          // Apply fog (blur) effect only when not hovered
          if (!isHovered)
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: widget.blurStrength, sigmaY: widget.blurStrength),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
