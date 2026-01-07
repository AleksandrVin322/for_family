import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Виджет текста для всего приложения.
class TextStyles extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;

  /// Виджет текста для всего приложения.
  const TextStyles({
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
