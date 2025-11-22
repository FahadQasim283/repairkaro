import 'package:flutter/material.dart';
import '/core/theme/app_colors.dart';

import 'font_manager.dart';

class AppTextStyles {
  AppTextStyles._();
  static TextStyle inter16RegularGreen = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.gradientStart,
  );
  static TextStyle inter16RegularGrey = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.greyHint,
  );
  static TextStyle inter16RegularNeutral500 = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.neutral500,
  );

  static TextStyle inter16RegularNeutral800 = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.neutral800,
  );
  static TextStyle inter16RegularNeutral400 = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.neutral400,
  );
  static TextStyle inter16RegularNeutral600 = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.neutral600,
  );
  static TextStyle inter16RegularWhite = FontManager.getStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.32,
    color: AppColors.white,
  );
}
