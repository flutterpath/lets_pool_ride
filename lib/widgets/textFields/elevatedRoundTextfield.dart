import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class ElevatedRoundTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const ElevatedRoundTextField({Key key, this.hintText, this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(
            top: 4,left: 16, right: 16, bottom: 4
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(30)
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10
              )
            ]
        ),
        child: TextField(
          obscureText: obscureText ?? false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.only(
              bottom: 8.0,),
        border: InputBorder.none,
        icon: Icon(Icons.email,
          color: MyColors.greyText,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: MyColors.greyText
        )
      ),
    )
    );
  }
}
