import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/controller/language/extension_language.dart';

class FillLiquidSvgButtonWidget extends StatefulWidget {
  const FillLiquidSvgButtonWidget({
    super.key,
    required this.mainColor,
    required this.fillColor,
    this.mainTextColor,
    this.fillTextColor,
    required this.text,
    required this.style,
    required this.onPressed,
    this.image,
  });
  final Color mainColor, fillColor;
  final Color? mainTextColor, fillTextColor;
  final String text;
  final TextStyle style;
  final VoidCallback onPressed;
  final String? image;
  @override
  State<FillLiquidSvgButtonWidget> createState() =>
      _FillLiquidSvgButtonWidgetState();
}

class _FillLiquidSvgButtonWidgetState extends State<FillLiquidSvgButtonWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hovering) {
        setState(() {
          isHovered = hovering;
        });
      },
      onTap: widget.onPressed,
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.fillColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: isHovered ? 200 : 0, // Animate width on hover
              height: double.infinity,
              decoration: BoxDecoration(
                color: widget.fillColor.withOpacity(0.9),
                borderRadius: BorderRadius.horizontal(
                  left: const Radius.circular(12),
                  right: Radius.circular(isHovered ? 12 : 0),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.text.tr(context),
                      style: widget.style.copyWith(
                        color: isHovered
                            ? widget.mainTextColor ?? widget.mainColor
                            : widget.fillTextColor ?? widget.fillColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  widget.image == null
                      ? const SizedBox()
                      : SvgPicture.asset(
                          widget.image!,
                          colorFilter: ColorFilter.mode(
                            isHovered
                                ? widget.mainTextColor ?? widget.mainColor
                                : widget.fillTextColor ?? widget.fillColor,
                            BlendMode.srcIn,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
