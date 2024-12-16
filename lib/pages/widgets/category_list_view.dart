import 'package:flutter/material.dart';
import 'package:net_market/pages/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryItem(
            imageUrl:
                'https://knetic.org.uk/wp-content/uploads/2020/07/Pcture-Placeholder.png',
            categoryName: 'category name',
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 3),
      ),
    );
  }
}
