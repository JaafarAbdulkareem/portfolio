import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/view/desktop_layout.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DesktopLayout(),
      ),
    );
  }
}
