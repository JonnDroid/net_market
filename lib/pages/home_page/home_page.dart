import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import 'package:net_market/pages/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: DefaultColors.white,
        child: const Column(
          children: [
            AppSearchBar(),
          ],
        ),
      ),
    );
  }
}
