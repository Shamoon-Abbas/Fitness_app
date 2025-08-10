import 'package:fitness_app/signup_and_login/signup_login_1.dart';
import 'package:flutter/material.dart';

import 'onboarding/onboarding_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SignupLogin1(),
    );
  }
}

