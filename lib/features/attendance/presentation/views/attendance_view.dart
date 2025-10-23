import 'package:flutter/material.dart';
import 'package:teacher_system/core/components/custom_drop_down_menu.dart';
import 'package:teacher_system/core/components/custom_students_count_row.dart';
import 'package:teacher_system/core/components/custom_text_form_field.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({super.key});

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mark student attendance for today',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: lightSubTextColor,
            ),
          ),

          CustomTextFormField(
            prefixIcon: Icon(
              Icons.calendar_today_outlined,
              color: lightSubTextColor,
            ),
            controller: dateController,
            text: '',
            labelText: 'Date',
            validator: (i) {
              return null;
            },
            keyboardType: TextInputType.datetime,
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDropDownMenu(
                hintText: 'All Classes',
                width: MediaQuery.of(context).size.width * 0.6,
                items: ['All Classes', 'Grade 3', 'Grade 4'],
                onChanged: (String? value) {},
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightGreenTextColor,
                ),
                child: Text(
                  'Mark All',
                  style: TextStyle(color: lightWhiteColor, fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomStudentsCountRow(),
        ],
      ),
    );
  }
}
