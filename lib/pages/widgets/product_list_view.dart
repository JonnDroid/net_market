import 'package:flutter/material.dart';
import 'package:net_market/pages/widgets/product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 3 / 4.5,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const ProductItem();
          },
        ),
      ),
    );
  }
}
