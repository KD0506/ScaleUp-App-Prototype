// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scale_up/pages/email_login.dart';
import 'package:scale_up/pages/home.dart';
import 'package:scale_up/pages/otp.dart';
import 'package:scale_up/pages/welcome_1.dart';
import 'package:scale_up/pages/mobile_login.dart';
import 'package:scale_up/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: WelcomeScreen(),
      routes: {
        '/login': (context) => EmailLogin(onPhoneLogin: () {
          Navigator.pushReplacementNamed(context, '/mobile');
        }),
        // '/mobile': (context) => PhoneLogin(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
