import 'theme_model.dart';
import 'package:flutter/material.dart';

AppTheme themeDark = AppTheme(
  // [ for custom colors you need to define first in theme model then here ]
  colors: AppColors(
      primary: Colors.black, appBlue: Colors.blue, white: Colors.white),

  // [ this themeData ]
  themeData: ThemeData(
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.black,
      secondary: Colors.black,
    ),
  ),
);
