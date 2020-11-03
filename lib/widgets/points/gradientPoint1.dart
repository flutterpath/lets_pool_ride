import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class GradientPoint1 extends StatelessWidget {
  final Color color;

  const GradientPoint1({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              colors: [
                color ?? MyColors.a1GradientDark,
                color ?? MyColors.a1GradientLight
              ]
          )
      ),
    );
  }
}
