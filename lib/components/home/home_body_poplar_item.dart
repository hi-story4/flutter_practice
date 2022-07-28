import 'package:flutter/material.dart';
import 'package:flutter_practice/constants.dart';
import 'package:flutter_practice/size.dart';
import 'package:flutter_practice/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = ["p1.jpg", "p2.jpg", "p3.jpg"];
  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: EdgeInsets.only(bottom: xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ]),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(height: sm)
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(
          height: sm,
        )
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(children: [
      Text(
        "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고 싶다구 ㅋㅋㅋㅋ 화장실도 3개예요!!! 4명이서 씻는것도 전혀 불편함없이 좋았어요 ^^ 이불도 포근하고 좋습니당ㅎㅎ",
        style: body1(),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      SizedBox(height: sm)
    ]);
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpg"),
        ),
        SizedBox(width: sm),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            Text("한국")
          ],
        )
      ],
    );
  }
}
