import 'package:flutter/material.dart';
import 'package:teacher_system/features/auth/presentation/widgets/graduated_hat_widget.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Column(children: [GraduatedHatWidget()])),
        ),
      ),
    );
  }
}
