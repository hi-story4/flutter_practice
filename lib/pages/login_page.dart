import 'package:flutter/material.dart';
import 'package:flutterwork/size.dart';
import 'package:flutterwork/components/logo.dart';
import 'package:flutterwork/components/custom_form.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xl),
            Logo('LogIn'),
            SizedBox(
              height: lg,
            ),
            CustomForm()
          ],
        ),
      ),
    );
  }
}
