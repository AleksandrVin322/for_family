import 'package:flutter/material.dart';

import 'presentation/pages/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'login_page': (context) => const AuthPage()},
      initialRoute: 'login_page',
    );
  }
}
