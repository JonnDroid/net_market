import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import '../widgets/category_list_view.dart';
import '../widgets/header.dart';
import '../widgets/price_filter.dart';
import '../widgets/product_list_view.dart';
import '../widgets/search_bar.dart';

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
              CategoryListView(),
              Header(text: '10 products to choose from'),
              PriceFilter(),
              ProductListView(),
            ],
          ),
        ),
      ),
    );
  }
}
