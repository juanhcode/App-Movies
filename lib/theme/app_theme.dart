import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.purple.shade400;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
    color: primary,
  ));
}
