import 'package:flutter/material.dart';
import 'package:net_market/data/model/product_model.dart';
import 'product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.productList,
  });
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 3 / 4.5,
        ),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductItem(productList: productList, index: index);
        },
      ),
    );
  }
}
