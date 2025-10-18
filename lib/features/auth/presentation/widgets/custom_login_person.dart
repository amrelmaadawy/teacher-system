import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class CutsomLoginPerson extends StatelessWidget {
  const CutsomLoginPerson({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defBorderRadius),
        border: Border.all(color: lightBordersColor, width: 1.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: lightSubTextColor, size: 30),
          Text(title, style: TextStyle(color: lightSubTextColor, fontSize: 16)),
        ],
      ),
    );
  }
}
