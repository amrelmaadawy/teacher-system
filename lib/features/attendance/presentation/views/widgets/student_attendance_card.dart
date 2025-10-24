
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class StudentAttendanceCard extends StatelessWidget {
  const StudentAttendanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
      ),
      color: lightWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: lightWhiteColor,
              radius: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/images/na3dawy.jpg'),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amr Mohamed',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: lightMainTextColor,
                  ),
                ),
                Text(
                  'Grade 10',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: lightSubTextColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.check_circle_outline,
              color: lightGreenSwitchColor,
            ),
            SizedBox(width: 5),
            Switch(
              value: true,
              onChanged: (i) {},
              activeThumbColor: lightWhiteColor,
              activeTrackColor: lightGreenSwitchColor,
            ),
          ],
        ),
      ),
    );
  }
}
