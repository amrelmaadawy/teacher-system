// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get WelcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'WelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to continue managing your Students`
  String get SignintocontinuemanagingyourStudents {
    return Intl.message(
      'Sign in to continue managing your Students',
      name: 'SignintocontinuemanagingyourStudents',
      desc: '',
      args: [],
    );
  }

  /// `Login as`
  String get Loginas {
    return Intl.message('Login as', name: 'Loginas', desc: '', args: []);
  }

  /// `teacher`
  String get teacher {
    return Intl.message('teacher', name: 'teacher', desc: '', args: []);
  }

  /// `assistant`
  String get assistant {
    return Intl.message('assistant', name: 'assistant', desc: '', args: []);
  }

  /// `Email or Phone`
  String get EmailorPhone {
    return Intl.message(
      'Email or Phone',
      name: 'EmailorPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email or Phone`
  String get EnterEmailorPhone {
    return Intl.message(
      'Enter Your Email or Phone',
      name: 'EnterEmailorPhone',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Enter Your Password`
  String get EnterPassword {
    return Intl.message(
      'Enter Your Password',
      name: 'EnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message('Sign In', name: 'SignIn', desc: '', args: []);
  }

  /// `New To Teacher System?`
  String get NewToTeacherSystem {
    return Intl.message(
      'New To Teacher System?',
      name: 'NewToTeacherSystem',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Join us and start managing your students`
  String get Joinusandstartmanagingyourstudents {
    return Intl.message(
      'Join us and start managing your students',
      name: 'Joinusandstartmanagingyourstudents',
      desc: '',
      args: [],
    );
  }

  /// `Register as`
  String get Registeras {
    return Intl.message('Register as', name: 'Registeras', desc: '', args: []);
  }

  /// `Full Name`
  String get FullName {
    return Intl.message('Full Name', name: 'FullName', desc: '', args: []);
  }

  /// `Enter Full Name`
  String get EnterFullName {
    return Intl.message(
      'Enter Full Name',
      name: 'EnterFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get EmailAddress {
    return Intl.message(
      'Email Address',
      name: 'EmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email Address`
  String get EnterEmailAddress {
    return Intl.message(
      'Enter Email Address',
      name: 'EnterEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get PhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Phone Number`
  String get EnterPhoneNumber {
    return Intl.message(
      'Enter Phone Number',
      name: 'EnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Create a Password`
  String get CreatePassword {
    return Intl.message(
      'Create a Password',
      name: 'CreatePassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Your Password`
  String get ConfirmYourPassword {
    return Intl.message(
      'Confirm Your Password',
      name: 'ConfirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already Have An Account?`
  String get AlreadyHaveAnAccount {
    return Intl.message(
      'Already Have An Account?',
      name: 'AlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get SendResetLink {
    return Intl.message(
      'Send Reset Link',
      name: 'SendResetLink',
      desc: '',
      args: [],
    );
  }

  /// `No worries! Enter your email or phone and we will send you a reset link`
  String get NoWorriesEnterYourEmailorPhoneandwellSendYouaResetLink {
    return Intl.message(
      'No worries! Enter your email or phone and we will send you a reset link',
      name: 'NoWorriesEnterYourEmailorPhoneandwellSendYouaResetLink',
      desc: '',
      args: [],
    );
  }

  /// `DashBoard`
  String get DashBoard {
    return Intl.message('DashBoard', name: 'DashBoard', desc: '', args: []);
  }

  /// `Students`
  String get Students {
    return Intl.message('Students', name: 'Students', desc: '', args: []);
  }

  /// `Attendance`
  String get Attendance {
    return Intl.message('Attendance', name: 'Attendance', desc: '', args: []);
  }

  /// `Payments`
  String get Payments {
    return Intl.message('Payments', name: 'Payments', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
