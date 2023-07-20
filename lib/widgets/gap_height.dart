import 'package:flutter/material.dart';

class GapHeight extends StatelessWidget {
  final double height;
  const GapHeight(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(height: height);
  }
}
