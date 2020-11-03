import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class ChatGroup extends StatefulWidget {
  @override
  _ChatGroupState createState() => _ChatGroupState();
}

class _ChatGroupState extends State<ChatGroup> {

  void handleClick(String value) {
    switch (value) {
      case 'Exit':
        break;
      case 'Add Members':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index){
      return ElevatedContainer(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(radius: 22,backgroundImage: AssetImage("assets/avatar/avatar1.png",)),
            SizedBox(width: 10,),
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBold(
                      text: "For king and glory",
                      fontSize: 18,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalText(
                          text: "5 members  * ",
                          fontSize: 14,
                          txtColor: MyColors.greyText,
                        ),
                        SizedBox(width: 5,),
                        NormalText(text : "4 actives", fontSize: 14,txtColor: MyColors.a1GradientDark,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            PopupMenuButton<String>(
              onSelected: handleClick,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              icon: Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) {
                return {"Add Members",'Exit',}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: NormalText(text: choice, txtColor: MyColors.redGraDark,fontSize: 12,)
                  );
                }).toList();
              },
            ),
          ],
        ),
      );
    });
  }
}
