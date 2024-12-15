import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import 'package:net_market/pages/widgets/header.dart';
import 'package:net_market/pages/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: DefaultColors.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSearchBar(),
              Header(text: 'Choose from any category'),
              Header(text: '10 products to choose from'),
            ],
          ),
        ),
      ),
    );
  }
}
