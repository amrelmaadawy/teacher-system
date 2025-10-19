import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/views/forgot_password_view.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/features/layout/presentation/view/layout_view.dart';
import 'package:teacher_system/generated/l10n.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(defPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              S.of(context).Loginas,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: lightMainTextColor,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CutsomLoginPerson(
                  title: S.of(context).teacher,
                  icon: Icons.person_outlined,
                ),
                CutsomLoginPerson(
                  title: S.of(context).assistant,
                  icon: Icons.manage_accounts_outlined,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              prefixIcon: Icon(Icons.email_outlined, color: lightSubTextColor),
              controller: emailController,
              text: S.of(context).EmailorPhone,
              labelText: S.of(context).EnterEmailorPhone,
              validator: (String? p1) {
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: lightSubTextColor,
              ),
              prefixIcon: Icon(Icons.lock_outline, color: lightSubTextColor),
              controller: passwordController,
              text: S.of(context).Password,
              labelText: S.of(context).EnterPassword,
              validator: (String? p1) {
                return null;
              },

              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordView()),
                );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  S.of(context).ForgotPassword,
                  style: TextStyle(
                    color: lightTextBottonColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomElevatedButton(
              text: S.of(context).SignIn,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
