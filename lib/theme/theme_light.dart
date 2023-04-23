// import 'package:flutter/material.dart';

// ThemeData theme = ThemeData(
//     useMaterial3: true,
//     colorScheme: ColorScheme.fromSeed(
//       seedColor: const Color(0xFF6C4F64),
//     ),
//     extensions: [CustomColors]);

// class CustomColors {}

// final ThemeData lightTheme = ThemeData.light().copyWith(
//     accentColor: Colors.grey.withAlpha(128),
//     backgroundColor: Color.fromARGB(255, 255, 255, 255),
//     textTheme: TextTheme(
//       caption: TextStyle(
//           fontSize: 17.0, fontFamily: 'Montserrat', color: Colors.black),
//     ))
//   ..addOwn(OwnThemeFields(
//       errorShade: Color.fromARGB(240, 255, 200, 200),
//       textBaloon: Color.fromARGB(240, 255, 200, 200)));

// class OwnThemeFields {
//   final Color? errorShade;
//   final Color? textBaloon;

//   const OwnThemeFields({Color? errorShade, Color? textBaloon})
//       : this.errorShade = errorShade,
//         this.textBaloon = textBaloon;

//   factory OwnThemeFields.colors() {
//     return const OwnThemeFields(
//         errorShade: Colors.black, textBaloon: Colors.black);
//   }
// }

// extension ThemeDataExtensions on ThemeData {
//   static Map<InputDecorationTheme, OwnThemeFields> _own = {};

// // adding color in theme
//   void addOwn(OwnThemeFields own) {
//     _own[inputDecorationTheme] = own;
//   }

//   static OwnThemeFields? empty;

//   OwnThemeFields own() {
//     var o = _own[inputDecorationTheme];
//     o = o ?? (empty ?? OwnThemeFields.empty());
//     return o;
//   }
// }

// OwnThemeFields ownTheme(BuildContext context) => Theme.of(context).own();

import '../core/utils/exports/app_material.dart';
import 'theme_model.dart';

AppTheme themeLight = AppTheme(
  colors: AppColors(
      primary: Colors.blue, appBlue: Colors.blue, white: Colors.white),
  // [ this themeData ]
  themeData: ThemeData(
    primaryColor: Colors.blue,
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.blue,
      secondary: Colors.blue,
    ),
  ),
);
