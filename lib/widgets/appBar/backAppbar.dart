import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class BackAppBar extends StatelessWidget {
  final void Function() onPressed;

  const BackAppBar({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 45,
      width: width,
      child: Row(
        children: [
          GestureDetector(onTap: onPressed ,child: Icon(Icons.arrow_back_ios,color: MyColors.black,)),
        ],
      ),
    );
  }
}
