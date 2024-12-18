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

class HomeContent extends StatefulWidget {
  const HomeContent({
    super.key,
    required this.productList,
  });
  final List<ProductModel> productList;

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int priceFilterIndex = 0;
  late List<ProductModel> filteredProductList;

  @override
  void initState() {
    super.initState();
    filteredProductList = widget.productList;
    _sortProductList(filteredProductList, priceFilterIndex);
  }

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
            Header(
                text: '${widget.productList.length} products to choose from'),
            PriceFilter(onSelectFilter: (index) {
              setState(() {
                priceFilterIndex = index;
                filteredProductList =
                    _sortProductList(widget.productList, index);
              });
            }),
            ProductListView(productList: filteredProductList),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> _sortProductList(List<ProductModel> productList, int index) {
  productList.sort(
    (a, b) {
      switch (index) {
        case 0:
          return a.price.compareTo(b.price);
        case 1:
          return b.price.compareTo(a.price);
        default:
          return 0;
      }
    },
  );

  return productList;
}

FutureBuilder _body() {
  final apiService =
      ApiService(Dio(BaseOptions(contentType: "application.json")));
  return FutureBuilder(
      future: apiService.getProducts(50),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final productList = snapshot.data as List<ProductModel>;
          return HomeContent(productList: productList);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      });
}
