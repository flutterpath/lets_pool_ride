import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class GFilledButton extends StatelessWidget {
  final String btnText;
  final void Function() onTap;

  const GFilledButton({Key key, this.btnText, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColors.pGradientDark,
                MyColors.pGradientLight
              ],
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(30)
            )
        ),
        child: Text(
          btnText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
