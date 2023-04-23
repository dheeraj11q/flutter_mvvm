import 'package:flutter/material.dart';
import 'package:fluttermvvm/theme/theme_dark.dart';
import 'package:fluttermvvm/theme/theme_light.dart';
import 'package:fluttermvvm/theme/theme_model.dart';
import 'package:provider/provider.dart';

class ThemeViewModel extends ChangeNotifier {
  bool isDark = false;
  AppTheme appTheme = themeLight;

  void changeTheme() {
    if (isDark) {
      isDark = false;
      appTheme = themeLight;
    } else {
      isDark = true;
      appTheme = themeDark;
    }

    notifyListeners();
  }
}

AppTheme appTheme(BuildContext context) {
  return Provider.of<ThemeViewModel>(context).appTheme;
}
