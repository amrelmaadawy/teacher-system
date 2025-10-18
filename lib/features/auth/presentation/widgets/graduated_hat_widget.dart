
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';

class GraduatedHatWidget extends StatelessWidget {
  const GraduatedHatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: lightBottonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        Icons.school_outlined,
        color: lightWhiteColor,
        size: 40,
      ),
    );
  }
}
