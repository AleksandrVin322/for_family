import 'package:flutter/material.dart';

import '../../../core/theme/color_styles.dart';
import '../../../core/theme/text_styles.dart';
import 'text_field_styles.dart';

class RegisterColumn extends StatelessWidget {
  /// [Column] с полями для регистрации аккаунта на странице авторизации.
  const RegisterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const .symmetric(horizontal: 40),
          child: TextFieldStyles(
            hintWidget: const TextStyles(
              text: 'Введите почту',
              color: ColorStyles.warmBrown,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            controller: TextEditingController(),
            icon: const Icon(Icons.mail, color: ColorStyles.terracotta),
            isObscureText: false,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const .symmetric(horizontal: 40),
          child: TextFieldStyles(
            hintWidget: const TextStyles(
              text: 'Введите имя пользователя',
              color: ColorStyles.warmBrown,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            controller: TextEditingController(),
            icon: const Icon(Icons.account_box, color: ColorStyles.terracotta),
            isObscureText: false,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const .symmetric(horizontal: 40),
          child: TextFieldStyles(
            hintWidget: const TextStyles(
              text: 'Введите пароль',
              color: ColorStyles.warmBrown,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            controller: TextEditingController(),
            icon: const Icon(Icons.password, color: ColorStyles.terracotta),
            isObscureText: true,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const .symmetric(horizontal: 40),
          child: TextFieldStyles(
            hintWidget: const TextStyles(
              text: 'Повторите пароль',
              color: ColorStyles.warmBrown,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            controller: TextEditingController(),
            icon: const Icon(Icons.password, color: ColorStyles.terracotta),
            isObscureText: true,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const .symmetric(horizontal: 40),
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(
                ColorStyles.terracotta,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            onPressed: () {},
            child: const TextStyles(
              text: 'Зарегистрироваться',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
