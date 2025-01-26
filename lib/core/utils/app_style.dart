import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_color.dart';
import 'package:my_portfolio/core/utils/constant_scale.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < ConstantScale.tablet) {
    return width / 700;
  } else if (width < ConstantScale.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}

abstract class AppStyles {
  AppStyles._();
  static TextStyle styleIBMRegular14(context) {
    return TextStyle(
      color: AppColorText.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'IBM Plex Mono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleIBMRegular24(context) {
    return TextStyle(
      color: AppColorText.third,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'IBM Plex Mono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleIBMMedium48(context) {
    return TextStyle(
      color: AppColorText.secondard,
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontFamily: 'IBM Plex Mono',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleIBMRegular16(context) {
    return TextStyle(
      color: AppColorText.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'IBM Plex Mono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleIBMMedium32(context) {
    return TextStyle(
      color: AppColorText.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'IBM Plex Mono',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleUbuntuRegular20(context) {
    return TextStyle(
      color: AppColorText.third,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleUbuntuRegular32(context) {
    return TextStyle(
      color: AppColorText.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleUbuntuLight16(context) {
    return TextStyle(
      color: AppColorText.secondard,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle styleUbuntuLite16(context) {
    return TextStyle(
      color: AppColorText.secondard,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle styleUbuntuRegular45(context) {
    return TextStyle(
      color: AppColorText.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 45),
      fontFamily: 'Ubuntu',
      fontWeight: FontWeight.w400,
    );
  }
}
