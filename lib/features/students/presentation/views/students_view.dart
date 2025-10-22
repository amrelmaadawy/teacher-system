import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/core/components/custom_text_form_field.dart';
import 'package:teacher_system/features/students/presentation/widgets/custom_student_item.dart';
import 'package:teacher_system/features/students/presentation/widgets/custom_students_card.dart';
import 'package:teacher_system/generated/l10n.dart';

class StudentsView extends StatefulWidget {
  const StudentsView({super.key});

  @override
  State<StudentsView> createState() => _StudentsViewState();
}

class _StudentsViewState extends State<StudentsView> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).ManageAndTrackYourStudents,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: lightMainTextColor,
                  ),
                ),
                CustomTextFormField(
                  prefixIcon: Icon(Icons.search, color: lightSubTextColor),
                  suffixIcon: Icon(Icons.tune, color: lightSubTextColor),
                  controller: searchController,
                  text: '',
                  labelText: S.of(context).SearchStudents,
                  validator: (i) => null,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10),
                Row(
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
                      backGroundColor: Color(0xfff0fdf4),
                      textColor: Color(0xff00a649),
                      numberColor: Color(0xff178a45),
                      borderColor: Color(0xffb9f8cf),
                    ),
                    CustomStudentsCard(
                      text: S.of(context).Absent,
                      number: 2,
                      backGroundColor: Color(0xfffef2f2),
                      textColor: Color(0xffe70413),
                      numberColor: Color(0xffc10007),
                      borderColor: Color(0xffffc9c9),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CustomStudentItem(),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
