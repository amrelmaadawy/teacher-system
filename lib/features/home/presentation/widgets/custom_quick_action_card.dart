import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class CustomQuickActionCard extends StatelessWidget {
  const CustomQuickActionCard({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.31,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: lightBlueBackgroundColor,
                radius: 25,
                child: Icon(icon, color: lightBottonColor),
              ),
              Text(title, style: TextStyle(color: lightMainTextColor)),
            ],
          ),
        ),
      ),
    );
  }
}
