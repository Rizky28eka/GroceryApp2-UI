import 'package:flutter/material.dart';

class GapWidth extends StatelessWidget {
  final double width;
  const GapWidth(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(width: width);
  }
}
