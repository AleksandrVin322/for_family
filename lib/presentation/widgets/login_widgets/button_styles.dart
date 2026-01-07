import 'package:flutter/material.dart';

import '../../../core/theme/color_styles.dart';
import '../../../core/theme/text_styles.dart';

class ButtonStyles extends StatelessWidget {
  final String text;
  final void Function()? func;
  final bool isLogin;

  /// Стилизованный кнопки для входа/регистрации для страницы авторизации.
  const ButtonStyles({
    required this.text,
    required this.func,
    required this.isLogin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(ColorStyles.terracotta),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      side: isLogin
          ? const WidgetStatePropertyAll(
              BorderSide(color: ColorStyles.olive, width: 5),
            )
          : null,
    );

    return Expanded(
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: TextButton(
          onPressed: func,
          style: buttonStyle,
          child: TextStyles(
            color: ColorStyles.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            text: text,
          ),
        ),
      ),
    );
  }
}
