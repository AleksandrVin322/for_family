import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/color_styles.dart';
import '../blocs/auth/auth_bloc.dart';
import '../widgets/login_widgets/login_column.dart';
import '../widgets/login_widgets/login_register_buttons.dart';
import '../widgets/login_widgets/name_app.dart';
import '../widgets/login_widgets/register_column.dart';

class AuthPage extends StatelessWidget {
  ///Страница авторизации.
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.cream,
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(flex: 3, child: NameApp()),
                    Expanded(child: LoginRegisterButtons()),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthLoginState) {
                    return const Expanded(flex: 6, child: LoginColumn());
                  }
                  if (state is AuthRegisterState) {
                    return const Expanded(flex: 6, child: RegisterColumn());
                  }
                  return const Expanded(flex: 6, child: LoginColumn());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
