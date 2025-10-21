import 'package:flutter/material.dart';
import 'package:teacher_system/core/components/custom_elevated_button.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/core/components/custom_text_form_field.dart';

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
      appBar: AppBar(title: Text('Add Student')),
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
                    'Fill in the required information below to add a new student to your class.',
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
                text: 'Student Name *',
                labelText: 'Enter Student Full Name',
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: studentPhoneNumberController,
                text: 'Phone Number *',
                labelText: 'Enter Student Phone Number',
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: paredntContactController,
                text: 'Parent Contact(optional)',
                labelText: 'Enter Parent Phone Number',
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: gradeController,
                text: 'Grade *',
                labelText: 'Select Grade',
                validator: (i) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              Spacer(),
              CustomElevatedButton(onPressed: () {}, text: 'Add Student'),
              SizedBox(height: 15),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                color: Color(0xffc10007),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
