
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/generated/l10n.dart';

class TodayAttendaceRate extends StatelessWidget {
  const TodayAttendaceRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff8f5ff),
        border: Border.all(color: lightBordersColor),
        borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  S.of(context).TodayAttedanceRate,
                  style: TextStyle(
                    color: lightMainTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  '${(0.55 * 100).toStringAsFixed(0)}%',
                  style: const TextStyle(
                    color: lightMainTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defBorderRadius),
                child: LinearProgressIndicator(
                  value: 0.55,
                  minHeight: 10,
                  backgroundColor: lightWhiteColor,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    lightBottonColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
