import 'package:flutter/material.dart';
import 'package:flutterwork/components/custom_text_form_field.dart';
import 'package:flutterwork/size.dart';

class CustomForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormField('Email'),
          SizedBox(
            height: md,
          ),
          CustomTextFormField('Password'),
          SizedBox(
            height: lg,
          ),
          TextButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                //유효성 검사
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text(
              'LogIn',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
