import 'package:flutter/material.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_text_form_field.dart';

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
      backgroundColor: Color(0xfff0f9ff),
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
                    color: Color(0xff57a4df),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.school_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Sign in to continue managing your Students',

                  style: TextStyle(fontSize: 16, color: Color(0xff64748b)),
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
                          'Login as',
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
                              title: 'teacer',
                              icon: Icons.person_outlined,
                            ),
                            CutsomLoginPerson(
                              title: 'assistant',
                              icon: Icons.manage_accounts_outlined,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        CustomTextFormField(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xff64748b),
                          ),
                          controller: emailController,
                          text: 'Email or Phone',
                          labelText: 'Enter Your email or phone',
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
                            color: Color(0xff64748b),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xff64748b),
                          ),
                          controller: passwordController,
                          text: 'password',
                          labelText: 'Enter Your password',
                          validator: (String? p1) {
                            return null;
                          },

                          keyboardType: TextInputType.visiblePassword,
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xff82bcdd),
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
                              backgroundColor: Color(0xff57a4df),
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
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
                      'New To Teacher System?',
                      style: TextStyle(color: Color(0xff64748b), fontSize: 16),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xff57a4df),
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
