import 'package:flutter/material.dart';
import 'package:teacher_system/core/components/custom_elevated_button.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/core/components/custom_text_form_field.dart';
import 'package:teacher_system/generated/l10n.dart';

class AddStudentView extends StatefulWidget {
  const AddStudentView({super.key});

  @override
  State<AddStudentView> createState() => _AddStudentViewState();
}

class _AddStudentViewState extends State<AddStudentView> {
  final studentNameController = TextEditingController();
  final studentPhoneNumberController = TextEditingController();
  final paredntContactController = TextEditingController();
  final gradeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).AddStudent)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Column(
            children: [
              Card(
                color: lightWhiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(defBorderRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(defPadding),
                  child: Text(
                    S
                        .of(context)
                        .FillInTheRequiredInformationBelowToAddANewStudentToYourClass,
                    style: TextStyle(
                      color: lightSubTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: studentNameController,
                text: S.of(context).StudentName,
                labelText: S.of(context).EnterStudentFullName,
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: studentPhoneNumberController,
                text: S.of(context).StudentPhoneNumber,
                labelText: S.of(context).EnterStudentPhoneNumber,
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: paredntContactController,
                text: S.of(context).ParentPhoneNumber,
                labelText: S.of(context).EnterParentPhoneNumber,
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: gradeController,
                text: S.of(context).Grade,
                labelText: S.of(context).SelectGrade,
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              Spacer(),
              CustomElevatedButton(
                onPressed: () {},
                text: S.of(context).AddStudent,
              ),
              SizedBox(height: 15),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: S.of(context).Cancel,
                color: lightRedTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
