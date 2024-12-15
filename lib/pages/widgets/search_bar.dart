import 'package:flutter/material.dart';
import 'package:net_market/core/theme.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 20.0),
      decoration: BoxDecoration(
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: DefaultColors.cardIcon,
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            )
          ]),
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
                  .bodySmall!
                  .copyWith(color: DefaultColors.gray)),
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
