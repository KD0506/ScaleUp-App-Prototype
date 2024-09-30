// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'email_login.dart';
import 'mobile_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEmailLogin = true;

  @override
  Widget build(BuildContext context) {
    return isEmailLogin
        ? EmailLogin(onPhoneLogin: () {
            setState(() {
              isEmailLogin = false;
            });
          })
        : PhoneLogin(onEmailLogin: () {
            setState(() {
              isEmailLogin = true;
            });
          });
  }
}

void main() {
  runApp(const MaterialApp(home: LoginScreen()));
}
