import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color primary = Color(0xFF12F7D6);
  static const Color secondard = Color(0xFFFFFFFF);
// static const Color workBackground = Color(0xFF1A1E23);
// static const Color workShadow = Color(0x3F000000);
  static const Color cardBackground = Color(0xFF292F36);
  static const Color percentage = Color(0xFFf0c10c);
  static const Color correct = Color(0xFF4CAF50);
  static const Color wrong = Color(0xFFF44336);

// Color(0xFFC81D1D);
//   static const Color seconderd = Color(0xFF);
}

abstract class AppColorText {
  static const Color primary = Color(0xFFFFFFFF);
  static const Color secondard = AppColor.primary;
  static const Color third = Color(0xFF292F36);
}
