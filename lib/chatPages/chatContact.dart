import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class ChatContact extends StatefulWidget {
  @override
  _ChatContactState createState() => _ChatContactState();
}

class _ChatContactState extends State<ChatContact> {

  void handleClick(String value) {
    switch (value) {
      case 'Call':
        break;
      case 'Remove':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return ElevatedContainer(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    CircleAvatar(radius: 22,backgroundImage: AssetImage("assets/avatar/avatar3.png",)),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2, color: MyColors.white),
                          color: Colors.green
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(
                          text: "Manav Raval",
                          fontSize: 18,
                        ),
                        SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                              text: "Online",
                              fontSize: 14,
                              txtColor: MyColors.a1GradientDark,
                            ),
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
                    return {"Call",'Remove',}.map((String choice) {
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
