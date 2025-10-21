import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class CustomStudentsCard extends StatelessWidget {
  const CustomStudentsCard({
    super.key,
    required this.text,
    required this.number,
    required this.backGroundColor,
    required this.textColor,
    required this.numberColor,
    required this.borderColor,
  });
  final String text;
  final int number;
  final Color backGroundColor;
  final Color textColor;
  final Color numberColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(defBorderRadius),
        border: Border.all(color: borderColor),
      ),
      width: MediaQuery.of(context).size.width * 0.3,
      height: 100,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
        ),
        color: backGroundColor,
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$number',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: numberColor,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
