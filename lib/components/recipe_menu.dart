import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItems(Icons.food_bank, "All"),
          _buildMenuItems(Icons.emoji_food_beverage, "Coffee"),
          _buildMenuItems(Icons.fastfood, "Burger"),
          _buildMenuItems(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildMenuItems(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(text, style: TextStyle(color: Colors.black87))
        ],
      ),
    );
  }
}
