import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: const Color(0xFFEFF1F3),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
              color: DefaultColors.darkGray,
            ),
            hintText: 'What are you looking for?',
            hintStyle: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: DefaultColors.gray)),
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
