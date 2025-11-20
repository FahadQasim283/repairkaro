import 'package:flutter/material.dart';
import 'app_textstyles.dart';

class AppTypography {
  AppTypography._();

  // -----------------------
  // HEADLINES
  // -----------------------

  /// Top-level titles like screen headers
  static TextStyle headlineLarge = AppTextStyles.inter16RegularNeutral800;

  /// Section titles (cards, settings sections)
  static TextStyle headlineMedium = AppTextStyles.inter16RegularNeutral600;

  /// Minor titles, inline headings
  static TextStyle headlineSmall = AppTextStyles.inter16RegularNeutral500;

  // -----------------------
  // BODY
  // -----------------------

  /// Regular paragraph text (main content)
  static TextStyle bodyLarge = AppTextStyles.inter16RegularNeutral800;

  /// Secondary body text (descriptions, details)
  static TextStyle bodyMedium = AppTextStyles.inter16RegularNeutral600;

  /// Tertiary/disabled text
  static TextStyle bodySmall = AppTextStyles.inter16RegularNeutral400;

  // -----------------------
  // LABELS / BUTTONS
  // -----------------------

  /// Primary button or filled label
  static TextStyle labelLarge = AppTextStyles.inter16RegularWhite;

  /// Secondary buttons, outline labels
  static TextStyle labelMedium = AppTextStyles.inter16RegularGrey;

  /// Smallest label (e.g. input field hint)
  static TextStyle labelSmall = AppTextStyles.inter16RegularNeutral500;

  // -----------------------
  // CAPTIONS / TINY INFO
  // -----------------------

  /// Used for success, subtle tags etc.
  static TextStyle caption = AppTextStyles.inter16RegularGreen;
}
