import 'package:flutter/material.dart';

import '../../../core/theme/color_styles.dart';
import '../../../core/theme/text_styles.dart';

class NameApp extends StatelessWidget {
  /// Виджет названия приложения для страницы авторизации.
  const NameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextStyles(
          text: 'For',
          color: ColorStyles.warmBrown,
          fontSize: 70,
          fontWeight: FontWeight.w500,
        ),
        TextStyles(
          text: 'Family',
          color: ColorStyles.warmBrown,
          fontSize: 70,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
