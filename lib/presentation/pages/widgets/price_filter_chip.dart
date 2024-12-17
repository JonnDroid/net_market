import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';

class PriceFilterChip extends StatefulWidget {
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
  State<PriceFilterChip> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilterChip> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: widget.isSelected
                ? DefaultColors.primary
                : DefaultColors.cardColor,
            border: Border.all(color: DefaultColors.cardColor, width: 0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: widget.isSelected
                      ? DefaultColors.white
                      : DefaultColors.textBodyColor,
                ),
          ),
        ),
      ),
    );
  }
}
