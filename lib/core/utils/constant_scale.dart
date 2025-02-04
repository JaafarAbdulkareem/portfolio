import 'package:flutter/material.dart';

class ConstantScale {
  static const double tablet = 400;
  static const double desktop = 1085; 
  static const double hiddenFlutterSymbol = 1155;
  static const double cardHeight = 450;
  static const double cardWidth = 290;

  static double calculateResponsiveSize(
    BuildContext context, {
    required double minSize,
    required double maxSize,
    required double multiplier,
  }) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double calculatedSize = screenWidth * multiplier;
    return calculatedSize.clamp(minSize, maxSize);
  }

  static int numberLine(double width) {
    int lineNo = ((width - 1050) / 35).toInt();
    return lineNo.clamp(1, 10);
  }
}
