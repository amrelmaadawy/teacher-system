import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';
import 'package:teacher_system/features/auth/presentation/widgets/login_card.dart';
import 'package:teacher_system/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                GraduatedHatWidget(),
                Text(
                  S.of(context).WelcomeBack,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  S.of(context).SignintocontinuemanagingyourStudents,

                  style: TextStyle(fontSize: 16, color: lightSubTextColor),
                ),
                LoginCard(),

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
