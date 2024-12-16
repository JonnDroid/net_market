import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:net_market/core/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          selectedIndex = index;
          widget.navigationShell.goBranch(index);
        });
      },
      backgroundColor: DefaultColors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
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
