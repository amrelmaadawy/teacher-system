import 'package:flutter/material.dart';
import 'package:teacher_system/features/auth/presentation/widgets/custom_login_person.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f9ff),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
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
                SizedBox(height: 10),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Sign in to continue managing your Students',

                  style: TextStyle(fontSize: 16, color: Color(0xff64748b)),
                ),
                Card(
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
                          children: [CutsomLoginPerson(), CutsomLoginPerson()],
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
