import 'package:flutter/material.dart';
import 'package:net_market/data/model/category_model.dart';
import 'category_item.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    super.key,
    required this.onSelectFilter,
  });
  final Function(int) onSelectFilter;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int selectedIndex = -1;

  List<CategoryModel> categoryList = [
    CategoryModel('electronics', 'assets/images/category/electronics.jpg'),
    CategoryModel('jewelery', 'assets/images/category/jewelery.jpg'),
    CategoryModel(
        'men\'s clothing', 'assets/images/category/men\'s_clothing.jpg'),
    CategoryModel(
        'women\'s clothing', 'assets/images/category/women\'s_clothing.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            imagePath: categoryList[index].imagePath,
            categoryName: categoryList[index].categoryName,
            isSelected: selectedIndex == index,
            onPressed: () {
              setState(() {
                selectedIndex != index
                    ? selectedIndex = index
                    : selectedIndex = -1;
                widget.onSelectFilter(selectedIndex);
              });
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 3),
      ),
    );
  }
}
