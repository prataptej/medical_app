import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: kSecondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF073738),
            offset: Offset(2, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kTextPrimary,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: kTextPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
