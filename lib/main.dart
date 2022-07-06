import 'package:flutter/material.dart';
import 'package:flutterwork/theme.dart';
import 'package:flutterwork/pages/home_page.dart';
import 'package:flutterwork/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Loginpage(),
        '/home': (context) => Homepage(),
      },
    );
  }
}
