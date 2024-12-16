import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:net_market/presentation/pages/widgets/bottom_nav_bar.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
