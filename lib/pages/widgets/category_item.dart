import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:net_market/core/theme.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    super.key,
    required this.imageUrl,
    required this.categoryName,
  });

  final String imageUrl;
  final String categoryName;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.22,
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromHeight(100),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: isSelected
                            ? const GradientBoxBorder(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    DefaultColors.circleBorder1,
                                    DefaultColors.circleBorder2,
                                  ],
                                ),
                                width: 3,
                              )
                            : null,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Center(
                  child: Text(
                    widget.categoryName.toTitleCase(),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: FontSizes.extraSmall,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
