import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class MatchingRideGroup extends StatefulWidget {
  @override
  _MatchingRideGroupState createState() => _MatchingRideGroupState();
}

class _MatchingRideGroupState extends State<MatchingRideGroup> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index){
        return ElevatedContainer(
                  child: Stack(
            children: [
              FilledButton(
                btnText: "Invite",
                btnWidth: width*0.3,
              ),
              Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(radius: 22,backgroundImage: AssetImage("assets/icons/fuel.png",)),
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
              Container(),
            ],
          ),
            ],
          ),
        );
      },
      
    );
  }
}