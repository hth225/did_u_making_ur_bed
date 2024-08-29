import 'package:flutter/material.dart';

ThemeData buildLightThemeData() {
  return ThemeData(
    primaryColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(vertical: 16)),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)))),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
      overlayColor: MaterialStateProperty.all<Color>(Colors.black54),
    )),
    textTheme: TextTheme(
        labelMedium: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
  );
}
