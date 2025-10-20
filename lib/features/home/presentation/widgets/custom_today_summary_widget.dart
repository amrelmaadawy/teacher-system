import 'package:flutter/material.dart';

class CustomTodaysSummaryWidget extends StatelessWidget {
  const CustomTodaysSummaryWidget({
    super.key,
    required this.title,
    required this.number,
  });
  final String title;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$number',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
