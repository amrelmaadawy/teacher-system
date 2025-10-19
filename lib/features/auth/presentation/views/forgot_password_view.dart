import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';
import 'package:teacher_system/generated/l10n.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailOrPhoneController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GraduatedHatWidget(),
                SizedBox(height: 30),

                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: lightMainTextColor,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'No worries! Enter your email or phone and we\'ll send you a reset link',
                  style: TextStyle(fontSize: 16, color: lightSubTextColor),
                ),
                SizedBox(height: 40),
                Card(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
