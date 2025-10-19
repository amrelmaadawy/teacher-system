import 'package:flutter/material.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/core/utils/app_size.dart';
import 'package:teacher_system/features/auth/presentation/widgets/create_account_card.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';
import 'package:teacher_system/generated/l10n.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    
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
                    S.of(context).CreateAccount,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: lightMainTextColor,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    S.of(context).Joinusandstartmanagingyourstudents,

                    style: TextStyle(fontSize: 16, color: lightSubTextColor),
                  ),
                  SizedBox(height: 10),

                  CreateAccountCard(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).AlreadyHaveAnAccount,
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
                          S.of(context).SignIn,
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
