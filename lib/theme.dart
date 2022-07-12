import 'package:flutter/material.dart';
import 'package:flutterwork/constants.dart';

ThemeData theme() {
  return ThemeData(
      fontFamily: "PatuaOne",
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor,
      appBarTheme: AppBarTheme(
        color: kPrimaryColor,
      ));
}
