import 'package:flutter/material.dart';
import 'package:flutterwork/components/profile_drawer.dart';
import 'package:flutterwork/components/profile_header.dart';
import 'package:flutterwork/components/profile_count_info.dart';
import 'package:flutterwork/components/profile_tab.dart';
import 'package:flutterwork/components/profile_buttons.dart';
import 'package:flutterwork/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile", style: TextStyle(color: Colors.black)),
      centerTitle: true,
    );
  }
}
