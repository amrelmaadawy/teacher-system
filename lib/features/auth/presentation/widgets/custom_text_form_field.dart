import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.text,
    required this.labelText,
    required this.validator,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String text;
  final String labelText;
  final String? Function(String?) validator;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          cursorColor: lightBottonColor,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelText: labelText,
            labelStyle: TextStyle(
              color: lightSubTextColor,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: lightBordersColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: lightBordersColor),
            ),
          ),
        ),
      ],
    );
  }
}
