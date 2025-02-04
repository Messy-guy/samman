// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myproffesional/screens/Signinpage.dart';
import 'package:myproffesional/screens/introPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
    );
  }
}
