import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class AppBarText extends StatelessWidget {
  final void Function() onPressed;
  final String title;

  const AppBarText({Key key, this.onPressed, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 45,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.pop(context), color: MyColors.black,),
          TextBold(
            fontSize: 18,
            text: title,
          )
        ],
      ),
    );
  }
}
