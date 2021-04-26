import 'package:flutter/material.dart';

ThemeData buildLightThemeData() {
  return ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
      overlayColor: MaterialStateProperty.all<Color>(Colors.black54),
    )),
    textTheme: TextTheme(
        button: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
  );
}
