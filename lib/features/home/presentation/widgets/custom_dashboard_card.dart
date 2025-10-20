import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class CustomDashBoardCard extends StatelessWidget {
  const CustomDashBoardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.count,
    required this.iconColor,
    required this.circleColor,
  });
  final IconData icon;
  final String title;
  final int count;
  final Color iconColor;
  final Color circleColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 150,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: circleColor,
                child: Icon(icon, color: iconColor),
              ),
              Text(
                title,
                style: TextStyle(color: lightSubTextColor, fontSize: 15),
              ),

              Text(
                '$count',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: lightMainTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
