import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class Text32Bold extends StatelessWidget {
  final String text;
  final TextAlign textAlign;

  const Text32Bold({Key key, this.text, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: MyColors.black
      ),
    );
  }
}
