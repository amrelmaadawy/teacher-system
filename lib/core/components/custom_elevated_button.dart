import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text, this.color=lightBottonColor,
  });
  final void Function() onPressed;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          text,
          style: TextStyle(
            color: lightWhiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
