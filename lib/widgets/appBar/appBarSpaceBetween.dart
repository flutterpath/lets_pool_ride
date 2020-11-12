import 'package:flutter/material.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class AppBarSpaceBetween extends StatelessWidget {
  final String title;
  final Widget suffix;

  const AppBarSpaceBetween({Key key, this.title, this.suffix}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width-40;
    return Container(
      height: 45,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back_ios)),
          TextBold(text: title,),
          GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: suffix
          ),
        ],
      ),
    );
  }
}
