import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({super.key, required this.hintText, required this.width, required this.items, required this.onChanged});
  final String hintText;
  final double width;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButton2<String>(
      underline: SizedBox(),
      hint: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Text(
          hintText,
          style: TextStyle(color: lightSubTextColor),
        ),
      ),
      buttonStyleData: ButtonStyleData(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), // ← rounded هنا
          border: Border.all(color: lightBordersColor),
          color: lightWhiteColor,
        ),
        elevation: 1,
      ),
      dropdownStyleData: DropdownStyleData(
        offset: Offset(0, -7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defBorderRadius),
          color: lightWhiteColor,

          border: Border.all(color: lightBordersColor),
        ),
        elevation: 2,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: TextStyle(color: lightSubTextColor)),
            ),
          )
          .toList(),
      onChanged: onChanged,

      iconStyleData: IconStyleData(
        icon: Icon(Icons.arrow_drop_down_outlined, color: lightSubTextColor),
      ),
    );
  }
}
