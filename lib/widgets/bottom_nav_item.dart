import 'package:flutter/material.dart';

import '../styles/text_style.dart';
import 'gap_height.dart';

class BottomNavItem extends StatelessWidget {
  final String title;
  const BottomNavItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(icon: Icon(Icons.home)),
        GapHeight(4),
        Text(
          'Home',
          style: textStyle10PrimaryColor,
        )
      ],
    );
  }
}
