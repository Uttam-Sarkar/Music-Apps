import 'package:flutter/material.dart';
import 'package:spotify_clone/auth/view/pages/login_page.dart';
import 'package:spotify_clone/core/theme/app_theme.dart';
import 'auth/view/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: LoginPage(),
    );
  }
}