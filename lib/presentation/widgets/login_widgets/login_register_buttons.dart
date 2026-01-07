import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import 'button_styles.dart';

class LoginRegisterButtons extends StatefulWidget {
  /// Виджет содержащий кнопки "Войти" и "Регистрация" для страницы авторизации.
  const LoginRegisterButtons({super.key});

  @override
  State<LoginRegisterButtons> createState() => _LoginRegisterButtonsState();
}

class _LoginRegisterButtonsState extends State<LoginRegisterButtons> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          ButtonStyles(
            text: 'Вход',
            func: () {
              setState(() {
                isLogin = true;
              });
              context.read<AuthBloc>().add(AuthLoginEvent());
            },
            isLogin: isLogin,
          ),
          const SizedBox(width: 10),
          ButtonStyles(
            text: 'Регистрация',
            func: () {
              setState(() {
                isLogin = false;
              });
              context.read<AuthBloc>().add(AuthRegisterEvent());
            },
            isLogin: !isLogin,
          ),
        ],
      ),
    );
  }
}
