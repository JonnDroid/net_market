import 'package:flutter/material.dart';
import 'price_filter_chip.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({
    super.key,
  });

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  List<String> filterLabel = ['Lowest price first', 'Highest price first'];
  int selectedIndex = 0;

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
                    });
                  });
            },
            separatorBuilder: (context, index) => const SizedBox(width: 3),
            itemCount: filterLabel.length),
      ),
    );
  }
}
