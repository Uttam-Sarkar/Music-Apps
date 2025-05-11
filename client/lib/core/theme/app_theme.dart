import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_palette.dart';

class AppTheme {
  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderSide: BorderSide(
        color: color,
        width: 3
    ),
    borderRadius: BorderRadius.circular(10),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(22),
      enabledBorder: _border(AppPalette.borderColor),
      focusedBorder: _border(AppPalette.gradient2)
    )
  );
}