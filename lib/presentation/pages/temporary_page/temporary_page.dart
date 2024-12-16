import 'package:flutter/material.dart';

class TemporaryPage extends StatelessWidget {
  const TemporaryPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
