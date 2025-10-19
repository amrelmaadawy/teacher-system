
import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/generated/l10n.dart';

class ForgotPasswordCard extends StatefulWidget {
  const ForgotPasswordCard({
    super.key,
  });


  @override
  State<ForgotPasswordCard> createState() => _ForgotPasswordCardState();
}

class _ForgotPasswordCardState extends State<ForgotPasswordCard> {
      final emailOrPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Column(
          children: [
            CustomTextFormField(
              controller: emailOrPhoneController,
              text: S.of(context).EmailorPhone,
              labelText: S.of(context).EnterEmailorPhone,
              validator: (String? p1) {
                return null;
              },
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10),
    
            CustomElevatedButton(
              text: S.of(context).SendResetLink,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
