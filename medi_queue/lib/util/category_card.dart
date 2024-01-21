import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String cardName;
  final Icon icon;
  VoidCallback onPressed;
  CategoryCard({
    required this.cardName,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(7)),
      child: TextButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(
          cardName,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
