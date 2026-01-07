import 'package:flutter/material.dart';

import '../../../core/theme/color_styles.dart';

class TextFieldStyles extends StatelessWidget {
  final Widget hintWidget;
  final TextEditingController controller;
  final Icon icon;
  final bool isObscureText;

  /// Стилизованный [TextField] для страницы авторизации.
  const TextFieldStyles({
    required this.hintWidget,
    required this.controller,
    required this.icon,
    required this.isObscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscureText,
      decoration: InputDecoration(
        prefixIcon: icon,
        hint: hintWidget,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: ColorStyles.grayBorder),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: ColorStyles.grayBorder),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
