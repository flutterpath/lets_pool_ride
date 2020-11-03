import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class FilledButton extends StatelessWidget {
  final double btnWidth;
  final void Function() onPressed;
  final String btnText;

  const FilledButton({Key key, this.btnWidth, this.onPressed, this.btnText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      height: 45,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(width: 2,color: MyColors.primary)),
        onPressed: onPressed,
        color: MyColors.primary,
        textColor: Colors.white,
        child: Text(
            btnText,
        ),
      ),
    );
  }
}
