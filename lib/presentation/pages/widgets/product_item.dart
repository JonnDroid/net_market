import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';
import 'package:net_market/data/model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key, required this.productList, required this.index});
  final List<ProductModel> productList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(color: DefaultColors.cardColor, width: 0.5),
        borderRadius: BorderRadius.circular(4.0),
      ),
      width: MediaQuery.sizeOf(context).width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(imageUrl: productList[index].image),
          ProductDetails(
            productName: productList[index].title,
            productDesc: productList[index].description,
            productPrice: '\$${productList[index].price}',
          )
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.scaleDown,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.productName,
    required this.productDesc,
    required this.productPrice,
  });

  final String productName;
  final String productDesc;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Text(
          productName,
          style: Theme.of(context).textTheme.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          productDesc,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: FontSizes.extraSmall,
                color: DefaultColors.subtextBodyColor,
              ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          productPrice,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
