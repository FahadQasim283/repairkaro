import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppDecorations {
  static const double buttonHeight = 48.0;
  static const double buttonBorderRadius = 14.0;
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 12);

  static final BoxShadow buttonShadow = BoxShadow(
    color: AppColors.shadowGreen,
    offset: const Offset(0, 4),
    blurRadius: 10,
  );

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment(-0.6, -1), // ~223deg approximation
    end: Alignment(0.6, 1),
    colors: [AppColors.gradientStart, AppColors.gradientEnd],
  );
  static const double errorBoxWidth = 327;
  static const double errorBoxHeight = 40;
  static const double errorBoxRadius = 12;
  static const double errorBoxBorderWidth = 1;

  static const EdgeInsets errorBoxPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  static const double errorBoxGap = 8;

  static const BoxShadow errorBoxShadow = BoxShadow(
    color: AppColors.redShadow,
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 2,
  );

  static final BoxDecoration errorBoxDecoration = BoxDecoration(
    color: AppColors.redLight,
    borderRadius: BorderRadius.circular(errorBoxRadius),
    border: Border.all(color: AppColors.red, width: errorBoxBorderWidth),
    boxShadow: [errorBoxShadow],
  );
  static const EdgeInsets ctaButtonPadding = EdgeInsets.symmetric(horizontal: 22, vertical: 10);

  static const double ctaButtonRadius = 9.0;
  static const double ctaButtonGap = 10.0;

  static const BoxShadow ctaButtonShadow = BoxShadow(
    color: AppColors.shadowGreen,
    offset: Offset(0, 4),
    blurRadius: 9,
  );

  static const LinearGradient ctaButtonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.greenStart, AppColors.greenEnd],
  );

  static const double inputHeight = 48;
  static const double inputRadius = 14.0;
  static const EdgeInsets inputPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const double inputGap = 8.0;

  static final BoxDecoration inputDecoration = BoxDecoration(
    color: AppColors.neutral100,
    borderRadius: BorderRadius.circular(inputRadius),
    border: Border.all(color: AppColors.neutral300, width: 1),
  );
  static const double primaryButtonRadius = 14.0;
  static const EdgeInsets primaryButtonPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 12);

  static const BoxShadow primaryButtonShadow = BoxShadow(
    color: AppColors.shadowLightGreen,
    offset: Offset(0, 4),
    blurRadius: 10,
  );

  static const LinearGradient primaryButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    transform: GradientRotation(223 * (3.1416 / 180)),
    colors: [
      AppColors.gradientStart,
      AppColors.gradientEnd, // #14D387
    ],
  );

  static final BoxDecoration primaryButtonDecoration = BoxDecoration(
    gradient: primaryButtonGradient,
    borderRadius: BorderRadius.circular(primaryButtonRadius),
    boxShadow: [primaryButtonShadow],
  );
  static const double roundedContainerRadius = 100.0;
  static const EdgeInsets roundedContainerPadding = EdgeInsets.all(4);
  static const double roundedContainerGap = 8.0;

  static final BoxDecoration roundedContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(roundedContainerRadius),
    border: Border.all(color: AppColors.neutralBorder, width: 0.5),
  );

  final BoxDecoration textFieldDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(14),
    border: Border.all(color: AppColors.blue, width: 1),
    boxShadow: [
      BoxShadow(color: AppColors.blueShadow, spreadRadius: 2, blurRadius: 0, offset: Offset(0, 0)),
    ],
  );
}

enum AlertVariant { normal, error, warning }
