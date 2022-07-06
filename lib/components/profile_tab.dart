import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit))
            ]),
            Expanded(child: _buildTabBarView())
          ],
        ));
  }
}

Widget _buildTabBarView() {
  return TabBarView(children: [
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
      ),
      itemCount: 42,
      itemBuilder: (context, index) {
        return Image.network("https://picsum.photos/id/${index + 1}/200/200");
      },
    ),
    Container(
      color: Colors.redAccent,
    ),
  ]);
}
