import 'package:flutter/material.dart';
import 'package:project1/features/auth/views/landing_screen.dart';
import 'package:project1/features/auth/views/signup_as_startup.dart';

import 'features/auth/views/signup_as_investor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LandingScreen(),
      //home: Login(),
      home: StartUp(),
    );
  }
}
