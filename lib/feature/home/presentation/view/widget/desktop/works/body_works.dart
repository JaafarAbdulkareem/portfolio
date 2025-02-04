import 'package:flutter/material.dart';
import 'package:my_portfolio/core/animation_widget/animated_button.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/custom_move_item_buttom.dart';
import 'package:my_portfolio/feature/home/presentation/view/widget/desktop/works/monitor_work.dart';

class BodyWorks extends StatelessWidget {
  const BodyWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    double width = MediaQuery.sizeOf(context).width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (width > ConstantScale.desktop) const Spacer(),
        // if (pageController.page! > 0)
        AnimatedButton(
          child: (isHaver) => CustomMoveItemButtom(
            icon: Icons.arrow_back_ios_new_outlined,
            onTap: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear,
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: MonitorWork(pageController: pageController),
        ),
        // SizedBox(width: spacing),
        const SizedBox(width: 10),
        AnimatedButton(
          child: (isHaver) => CustomMoveItemButtom(
            icon: Icons.arrow_forward_ios_outlined,
            onTap: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.linear,
              );
            },
          ),
        ),
        if (width > ConstantScale.desktop) const Spacer(),
      ],
    );
  }
}
