import 'package:flutter/material.dart';
import 'package:flutter_practice/size.dart';
import 'package:flutter_practice/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(md),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Icon(Icons.favorite, color: Colors.pinkAccent),
        SizedBox(width: sm),
        Text("RoomOfAll", style: h5(mColor: Colors.white))
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle1(mColor: Colors.white)),
        SizedBox(width: md),
        Text("로그인", style: subtitle1(mColor: Colors.white))
      ],
    );
  }
}
