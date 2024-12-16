import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle:
          Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
      unselectedLabelStyle:
          Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle,
      selectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      unselectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: 'Discover'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded), label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded), label: 'Sell'),
        BottomNavigationBarItem(
            icon: Icon(Icons.inbox_rounded), label: 'Inbox'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded), label: 'Profile'),
      ],
    );
  }
}
