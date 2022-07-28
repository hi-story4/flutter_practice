import 'package:flutter/material.dart';
import 'package:flutter_practice/size.dart';
import 'package:flutter_practice/styles.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: md),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/jpg1.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 320,
        ));
  }

  Widget _buildBannerCaption() {
    return Positioned(
        top: 40,
        left: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 250),
              child: Text(
                "이제, 여행은 가까운 곳에서",
                style: h4(mColor: Colors.white),
              ),
            ),
            SizedBox(height: md),
            Container(
              constraints: BoxConstraints(maxWidth: 250),
              child: Text("새로운 공간에 머물로 보세요. 살아보기, 출장,여행 등 다양한 목적에 맞는 숙소를 찾아보세요",
                  style: subtitle1(mColor: Colors.white)),
            )
          ],
        ));
  }
}
