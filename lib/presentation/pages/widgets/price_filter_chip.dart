import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';

class PriceFilterChip extends StatelessWidget {
  const PriceFilterChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  final String text;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: isSelected ? DefaultColors.primary : DefaultColors.cardColor,
            border: Border.all(color: DefaultColors.cardColor, width: 0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: isSelected
                      ? DefaultColors.white
                      : DefaultColors.textBodyColor,
                ),
          ),
        ),
      ),
    );
  }
}
