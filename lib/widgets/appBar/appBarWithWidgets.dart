import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class AppBarWithWidgets extends StatelessWidget {
  final String title;
  final Widget suffix;

  const AppBarWithWidgets({Key key, this.title, this.suffix}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 40),
      width: width,
      color: MyColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back_ios)),
              TextBold(text: title,),
            ],
          ),
          (suffix == null)
          ?
              Row(
                children: [
                FloatingActionButton(
                elevation: 0,
    onPressed: (){},
    backgroundColor: MyColors.primaryLight,
    child: Image.asset("assets/icons/chatIcon.png", color: MyColors.primary,height: 20,),
    ),
                  SizedBox(width: 10,),
                  RoundedIconButton(
                    icon: Icons.more_horiz,
                    backgroundColor: MyColors.primaryLight,
                    onPressed: (){},
                  )
                ],
              )
              :
          GestureDetector(
              onTap: (){},
              child: suffix
          ),
        ],
      ),
    );
  }
}
