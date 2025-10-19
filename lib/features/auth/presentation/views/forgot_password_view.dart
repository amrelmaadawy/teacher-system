import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/forgot_password_card.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';
import 'package:teacher_system/generated/l10n.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  S.of(context).ForgotPassword,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: lightMainTextColor,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  S.of(context).NoWorriesEnterYourEmailorPhoneandwellSendYouaResetLink,
                  style: TextStyle(fontSize: 16, color: lightSubTextColor),
                ),
                SizedBox(height: 40),
                ForgotPasswordCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
