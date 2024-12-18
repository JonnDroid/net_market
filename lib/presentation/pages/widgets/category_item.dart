import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:net_market/core/theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.categoryName,
    required this.isSelected,
    required this.onPressed,
  });

  final String imagePath;
  final String categoryName;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
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
                          image: AssetImage(imagePath),
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
                    categoryName.toTitleCase(),
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
