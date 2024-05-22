import 'package:flutter/material.dart';
import 'package:login_reg/login_screen.dart';
import 'package:login_reg/reg_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: const login(),
      );
    }
}