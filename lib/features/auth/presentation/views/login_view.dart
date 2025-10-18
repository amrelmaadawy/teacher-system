import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/generated/l10n.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: lightBottonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.school_outlined,
                    color: lightWhiteColor,
                    size: 40,
                  ),
                ),
                Text(
                  S.of(context).WelcomeBack,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  S.of(context).SignintocontinuemanagingyourStudents,

                  style: TextStyle(fontSize: 16, color: lightSubTextColor),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          S.of(context).Loginas,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: lightSubTextColor,
                          ),
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
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: lightSubTextColor,
                          ),
                          controller: passwordController,
                          text: S.of(context).Password,
                          labelText: S.of(context).EnterPassword,
                          validator: (String? p1) {
                            return null;
                          },

                          keyboardType: TextInputType.visiblePassword,
                        ),
                        SizedBox(height: 10),
                        Align(
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
                              S.of(context).SignIn,
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
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).NewToTeacherSystem,
                      style: TextStyle(color: lightSubTextColor, fontSize: 16),
                    ),
                    Text(
                      S.of(context).CreateAccount,
                      style: TextStyle(
                        color: lightTextBottonColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
