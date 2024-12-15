import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import 'package:net_market/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Patch - Skill Test',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
