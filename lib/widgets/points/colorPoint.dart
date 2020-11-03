import 'package:flutter/material.dart';

class ColorPoint extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const ColorPoint({Key key, this.color, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 15,
      width: width ?? 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
      ),
    );
  }
}
