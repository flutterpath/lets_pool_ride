import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;
  final TextOverflow overflow;
  final TextAlign textAlign;

  const NormalText({Key key, this.text, this.txtColor, this.fontSize, this.overflow, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
          color: txtColor ?? MyColors.black,
          fontSize: fontSize ?? 18,
      ),
    );
  }
}
