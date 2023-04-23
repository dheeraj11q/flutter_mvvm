import 'package:flutter/material.dart';

// [ Here define color custom color name ]

class AppColors {
  Color primary;
  Color appBlue;
  Color white;
  AppColors(
      {required this.primary, required this.appBlue, required this.white});
}

// [ Theme model ]

class AppTheme {
  AppColors colors;
  ThemeData themeData;

  AppTheme({required this.colors, required this.themeData});
}
