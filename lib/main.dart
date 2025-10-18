import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:teacher_system/core/utils/app_colors.dart';
import 'package:teacher_system/features/auth/presentation/views/login_view.dart';
import 'package:teacher_system/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(fontFamily: 'Poppins',scaffoldBackgroundColor:lightScaffoldcolor),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    
    );
  }
}
