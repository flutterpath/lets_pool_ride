import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class Text16SemiBold extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color color;

  const Text16SemiBold({Key key, this.text, this.textAlign, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: color ?? MyColors.semiBold
      ),
    );
  }
}
