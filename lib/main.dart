import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:net_market/core/theme.dart';

import 'presentation/router/app_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: DefaultColors.primary,
      systemNavigationBarColor: DefaultColors.secondary,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Patch - Skill Test',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
