// import 'package:flutter/material.dart';

// class VibratingWidget extends StatefulWidget {
//   const VibratingWidget({
//     super.key,
//     required this.child,
//     this.duration = 100,
//     this.waitingSecond = 3,
//     this.vibrateCount = 3,
//   });
//   final Widget child;
//   final int duration;
//   final int waitingSecond;
//   final int vibrateCount;

//   @override
//   State<VibratingWidget> createState() => _VibratingWidgetState();
// }

// class _VibratingWidgetState extends State<VibratingWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     // Create the AnimationController
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: widget.duration),
//     );

//     // Define the shaking (vibrating) animation
//     _animation = TweenSequence<double>([
//       TweenSequenceItem(tween: Tween(begin: 0, end: 8), weight: 1), // Right
//       TweenSequenceItem(tween: Tween(begin: 8, end: -8), weight: 2), // Left
//       TweenSequenceItem(tween: Tween(begin: -8, end: 0), weight: 1), // Back
//     ]).animate(_controller);

//     // Schedule the vibration to repeat
//     _repeatVibration();
//   }

//   void _repeatVibration() async {
//     while (true) {
//       await Future.delayed(
//           Duration(seconds: widget.waitingSecond)); // Wait for the interval
//       for (int i = 0; i < widget.vibrateCount; i++) {
//         if (!mounted) return;
//         _controller.forward();
//         await Future.delayed(
//           Duration(milliseconds: widget.duration),
//         );
//         _controller.reset();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return Transform.translate(
//           offset: Offset(_animation.value, 0), // Shake horizontally
//           child: widget.child,
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
