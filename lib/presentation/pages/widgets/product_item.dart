import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(
              imageUrl:
                  'https://parksononline.com.my/pub/media/catalog/product/cache/74dd13153097d0b1d419934f9584ba5f/7/7/77294715-01-main.jpg'),
          ProductDetails(
            productName: 'Product Name Brand XYZ',
            productDesc:
                'The description is too long, it will not fit in the container',
            productPrice: 'P2000,00',
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
            fit: BoxFit.cover,
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
