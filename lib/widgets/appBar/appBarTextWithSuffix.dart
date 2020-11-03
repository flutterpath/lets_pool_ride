import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class AppBarTextWithSuffix extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Widget suffix;

  const AppBarTextWithSuffix({Key key, this.onPressed, this.title, this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 45,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.arrow_back_ios,color: MyColors.black,),
              SizedBox(width: 10,),
              TextBold(
                fontSize: 18,
                text: title,
              ),
            ],
          ),
          suffix
        ],
      ),
    );
  }
}