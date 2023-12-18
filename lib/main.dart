import 'package:flutter/material.dart';
import 'package:machine_test_mxpertz/first_page.dart';
import 'package:machine_test_mxpertz/login_page.dart';
import 'package:machine_test_mxpertz/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
