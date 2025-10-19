import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/generated/l10n.dart';

class CreateAccountCard extends StatefulWidget {
  const CreateAccountCard({super.key});

  @override
  State<CreateAccountCard> createState() => _CreateAccountCardState();
}

class _CreateAccountCardState extends State<CreateAccountCard> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final fullNameController = TextEditingController();
  final createPasswordController = TextEditingController();
  final confiremPasswordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    fullNameController.dispose();
    createPasswordController.dispose();
    confiremPasswordController.dispose();
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
              S.of(context).Registeras,
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
              prefixIcon: Icon(Icons.person_outline, color: lightSubTextColor),
              controller: fullNameController,
              text: S.of(context).FullName,
              labelText: S.of(context).EnterFullName,
              validator: (String? p1) {
                return null;
              },
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              prefixIcon: Icon(Icons.email_outlined, color: lightSubTextColor),
              controller: emailController,
              text: S.of(context).EmailAddress,
              labelText: S.of(context).EnterEmailAddress,
              validator: (String? p1) {
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              prefixIcon: Icon(Icons.phone_outlined, color: lightSubTextColor),
              controller: phoneController,
              text: S.of(context).PhoneNumber,
              labelText: S.of(context).EnterPhoneNumber,
              validator: (String? p1) {
                return null;
              },
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: lightSubTextColor,
              ),
              prefixIcon: Icon(Icons.lock_outline, color: lightSubTextColor),
              controller: createPasswordController,
              text: S.of(context).Password,
              labelText: S.of(context).CreatePassword,
              validator: (String? p1) {
                return null;
              },

              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: lightSubTextColor,
              ),
              prefixIcon: Icon(Icons.lock_outline, color: lightSubTextColor),
              controller: confiremPasswordController,
              text: S.of(context).ConfirmPassword,
              labelText: S.of(context).ConfirmYourPassword,
              validator: (String? p1) {
                return null;
              },

              keyboardType: TextInputType.visiblePassword,
            ),

            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightBottonColor,
                ),
                child: Text(
                  S.of(context).CreateAccount,
                  style: TextStyle(
                    color: lightWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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
