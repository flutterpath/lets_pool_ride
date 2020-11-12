import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class CustomOutlineButton extends StatelessWidget {

  final String btnText;
  final void Function() onPressed;
  final double btnWidth;
  final Color btnColor;

  const CustomOutlineButton({Key key, this.btnText, this.onPressed, this.btnWidth, this.btnColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      height: 43,
      child: OutlineButton(
        textColor: btnColor ?? MyColors.primary,
          child: Text(btnText),
          onPressed: onPressed,
          borderSide: BorderSide(width: 2, color: btnColor ?? MyColors.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),)
      ),
    );
  }
}
