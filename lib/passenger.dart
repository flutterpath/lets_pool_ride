import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/buttons/outlineButton.dart';
import 'package:lets_pool/widgets/points/gradientPoint.dart';
import 'package:lets_pool/widgets/points/gradientPoint1.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class Passenger extends StatefulWidget {
  @override
  _PassengerState createState() => _PassengerState();
}

class _PassengerState extends State<Passenger> {

  Widget iconWithText({Widget icon, String text, String subText}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(width: 5,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBold(
              text: text,
              fontSize: 16,
            ),
            SizedBox(height: 3,),
            NormalText(
              text: subText,
              txtColor: MyColors.greyText,
              fontSize: 12,
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index){
          return ElevatedContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 22,backgroundImage: AssetImage("assets/avatar/avatar3.png",)),
                    SizedBox(width: 10,),
                    Container(
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBold(
                              text: "Manav Rajput",
                              fontSize: 20,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: MyColors.golden,size: 15,),
                                SizedBox(width: 5,),
                                TextBold(
                                  text :"4.8 ",
                                  fontSize: 12,
                                ),
                                NormalText(
                                  text: "(289)",
                                  fontSize: 12,
                                  txtColor: MyColors.greyText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                NormalText(
                  text: "Marathalli, Bengaluru, Karnataka,India, Madiwata, Hosur Road, Silk board",
                  fontSize: 14,
                  txtColor: MyColors.grey,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconWithText(icon: GradientPoint(), text: "16:28", subText: "Pick up"),
                    iconWithText(icon: GradientPoint1(), text: "17:28", subText: "Drop"),
                    iconWithText(icon: GradientPoint(), text: "128", subText: "Points"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlineButton(
                      btnText: "Route",
                      onPressed: (){},
                      btnWidth: width*0.35,
                    ),
                    FilledButton(btnText: "Invite",btnWidth: width*0.35,onPressed: (){},),
                  ],
                )
              ],
            ),
          );
        }
    );
  }
}
