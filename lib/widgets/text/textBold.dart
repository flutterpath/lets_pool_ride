import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class TextBold extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;

  const TextBold({Key key, this.text, this.txtColor, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: txtColor ?? MyColors.black,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 18
      ),
    );
  }
}
