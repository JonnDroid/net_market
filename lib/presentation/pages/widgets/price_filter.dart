import 'package:flutter/material.dart';
import 'price_filter_chip.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({
    super.key,
    required this.onSelectFilter,
  });

  final Function(int) onSelectFilter;

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  int selectedIndex = 0;

  final List<String> filterLabel = [
    'Lowest price first',
    'Highest price first'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: SizedBox(
        height: 35,
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PriceFilterChip(
                  text: filterLabel[index],
                  isSelected: selectedIndex == index,
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                      widget.onSelectFilter(index);
                    });
                  });
            },
            separatorBuilder: (context, index) => const SizedBox(width: 3),
            itemCount: filterLabel.length),
      ),
    );
  }
}
