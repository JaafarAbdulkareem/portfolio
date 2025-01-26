import 'package:flutter/material.dart';

abstract class AppColor {
static const Color primary = Color(0xFF12F7D6);
static const Color workBackground = Color(0xFF1A1E23);
static const Color workShadow = Color(0x3F000000);
// Color(0xFFC81D1D);
//   static const Color seconderd = Color(0xFF);
}

abstract class AppColorText {
  static const Color primary = Color(0xFFFFFFFF);
  static const Color secondard = AppColor.primary;
  static const Color third = Color(0xFF292F36);
}
