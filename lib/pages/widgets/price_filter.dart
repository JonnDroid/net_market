import 'package:flutter/material.dart';
import 'package:net_market/pages/widgets/price_filter_chip.dart';

class PriceFilter extends StatelessWidget {
  const PriceFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        children: [
          PriceFilterChip(text: 'Lowest price first'),
          PriceFilterChip(text: 'Highest price first'),
        ],
      ),
    );
  }
}
