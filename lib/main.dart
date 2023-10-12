import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample_signup/presentation/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Demo",
      home: Login(),
    );
  }
}
