// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myproffesional/screens/Signinpage.dart';
import 'package:myproffesional/screens/Signuppage.dart';
import 'package:myproffesional/screens/intro/introPage.dart';
import 'package:myproffesional/screens/intro/splashscreen.dart';
import 'package:myproffesional/screens/verification/otpverify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      routes: {
        '/signin': (context) => const Signinpage(),
        '/otp': (context) => const Otpverify(),
        '/signup': (context) => Signuppage(),
      },
    );
  }
}
