import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarText.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/buttons/outlineButton.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: AppBarText(
              title: "Notifications",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey[100], MyColors.white])),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: TextBold(text: "Today",txtColor: MyColors.grey,fontSize: 12,),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ElevatedContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextBold(
                    text: "Keshav Rav is invited you to join his car pool",
                    fontSize: 14,
                    txtColor: MyColors.grey,
                  ),
                  Divider(
                    color: MyColors.grey,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage(
                            "assets/avatar/avatar3.png",
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextBold(
                                text: "Keshav Rav",
                                fontSize: 20,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: MyColors.golden,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextBold(
                                    text: "4.8 ",
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          ColorPoint(
                            color: MyColors.a1GradientDark,
                            height: 8,
                            width: 8,
                          ),
                          DottedLine(
                            lineLength: 25,
                            dashLength: 4,
                            direction: Axis.vertical,
                            dashGapLength: 2,
                            dashColor: MyColors.grey,
                          ),
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: MyColors.redGraDark,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            NormalText(
                              text:
                                  "Parateek Wisteria Sector 77,eifr Nioda, Uttar Pradhan",
                              txtColor: MyColors.black,
                              fontSize: 14,
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            NormalText(
                              text:
                                  "Parateek Wisteria Sector 77,eifr Nioda, Uttar Pradhan",
                              txtColor: MyColors.black,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlineButton(
                        btnText: "Route",
                        onPressed: () {},
                        btnWidth: width * 0.22,
                      ),
                      CustomOutlineButton(
                        btnText: "Decline",
                        onPressed: () {},
                        btnColor: MyColors.accent,
                        btnWidth: width * 0.22,
                      ),
                      FilledButton(
                        btnText: "Accept",
                        btnWidth: width * 0.22,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ElevatedContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(
                        "assets/avatar/avatar3.png",
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(
                          text: "Madhav",
                          fontSize: 20,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/icons/chatIcon.png", height: 12,),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(child: NormalText(text: "Hey! Do you want to take car pool today also?",fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
