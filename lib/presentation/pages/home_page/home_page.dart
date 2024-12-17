import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import 'package:net_market/data/model/product_model.dart';
import 'package:net_market/data/service/api_service.dart';
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
      body: _body(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.productList,
  });
  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: DefaultColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSearchBar(),
            const Header(text: 'Choose from any category'),
            const CategoryListView(),
            Header(text: '${productList.length} products to choose from'),
            PriceFilter(),
            ProductListView(productList: productList),
          ],
        ),
      ),
    );
  }
}

FutureBuilder _body() {
  final apiService =
      ApiService(Dio(BaseOptions(contentType: "application.json")));
  return FutureBuilder(
      future: apiService.getProducts(50),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeContent(
            productList: snapshot.data != null ? snapshot.data! : const [],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      });
}
