import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontManager {
  static const String _defaultFont = 'Chakra Petch';

  static TextStyle getStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    double height = 1.5,
    double letterSpacing = 0.32,
  }) {
    return GoogleFonts.getFont(
      _defaultFont,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
      color: color,
      fontFeatures: const [FontFeature.disable('liga')],
      textBaseline: TextBaseline.alphabetic,
    );
  }

  /// Central place to preload weights
  static Future<void> preload() async {
    await GoogleFonts.pendingFonts([
      GoogleFonts.getFont(_defaultFont),
      GoogleFonts.getFont(_defaultFont, fontWeight: FontWeight.w500),
      GoogleFonts.getFont(_defaultFont, fontWeight: FontWeight.w600),
      GoogleFonts.getFont(_defaultFont, fontWeight: FontWeight.w700),
    ]);
  }
}
