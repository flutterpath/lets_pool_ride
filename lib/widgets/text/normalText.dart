import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;

  const NormalText({Key key, this.text, this.txtColor, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: txtColor ?? MyColors.black,
          fontSize: fontSize ?? 18
      ),
    );
  }
}
