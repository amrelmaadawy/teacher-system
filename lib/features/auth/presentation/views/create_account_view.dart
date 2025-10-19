import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';
import 'package:teacher_system/generated/l10n.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defPadding),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GraduatedHatWidget(),
                  SizedBox(height: 10),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: lightMainTextColor,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    'Join us and start managing your students',

                    style: TextStyle(fontSize: 16, color: lightSubTextColor),
                  ),
                  SizedBox(height: 10),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(defPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Register as',
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
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: lightSubTextColor,
                            ),
                            controller: emailController,
                            text: 'Full Name',
                            labelText: 'Enter Full Name',
                            validator: (String? p1) {
                              return null;
                            },
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(height: 10),
                          CustomTextFormField(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: lightSubTextColor,
                            ),
                            controller: emailController,
                            text: 'Email Address',
                            labelText: 'Enter Email Address',
                            validator: (String? p1) {
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 10),
                          CustomTextFormField(
                            prefixIcon: Icon(
                              Icons.phone_outlined,
                              color: lightSubTextColor,
                            ),
                            controller: emailController,
                            text: 'Phone Number',
                            labelText: 'Enter Phone Number',
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
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: lightSubTextColor,
                            ),
                            controller: passwordController,
                            text: S.of(context).Password,
                            labelText: 'Create a Password',
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
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: lightSubTextColor,
                            ),
                            controller: passwordController,
                            text: 'Confirm Password',
                            labelText: 'Confirm Your Password',
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
                                'Create Account',
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: lightSubTextColor,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: lightTextBottonColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
