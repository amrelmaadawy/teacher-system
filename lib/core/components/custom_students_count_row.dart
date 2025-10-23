
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/features/students/presentation/widgets/custom_students_card.dart';
import 'package:teacher_system/generated/l10n.dart';

class CustomStudentsCountRow extends StatelessWidget {
  const CustomStudentsCountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomStudentsCard(
          text: S.of(context).Total,
          number: 10,
          backGroundColor: lightWhiteColor,
          textColor: lightSubTextColor,
          numberColor: lightMainTextColor,
          borderColor: lightBordersColor,
        ),
        CustomStudentsCard(
          text: S.of(context).Active,
          number: 8,
          backGroundColor: lightGreenBackgroundColor,
          textColor: lightGreenTextColor,
          numberColor: lightGreenTextColor,
          borderColor: lightGreenBorderColor,
        ),
        CustomStudentsCard(
          text: S.of(context).Absent,
          number: 2,
          backGroundColor: lightRedBackgroundColor,
          textColor: lightRedTextColor,
          numberColor: lightRedTextColor,
          borderColor: lightRedBorderColor,
        ),
      ],
    );
  }
}
