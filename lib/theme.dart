import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "PatuaOne",
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(400, 60),
      ),
    ),
  );
}
