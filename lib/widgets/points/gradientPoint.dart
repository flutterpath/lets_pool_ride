import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class GradientPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            MyColors.pGradientDark,
            MyColors.pGradientLight
          ]
        )
      ),
    );
  }
}
