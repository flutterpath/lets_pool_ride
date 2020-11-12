import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarTextWithSuffix.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:dotted_line/dotted_line.dart';

class MyRide extends StatefulWidget {
  @override
  _MyRideState createState() => _MyRideState();
}

class _MyRideState extends State<MyRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: AppBarTextWithSuffix(
              title: "My Ride",
              onTap: () {
                Navigator.pop(context);
              },
              suffix: Row(
                children: [
                  FloatingActionButton(
                    heroTag: "chatIcon",
                    elevation: 0,
                    onPressed: () {
                      Navigator.pushNamed(context, '/ChatScreen');
                    },
                    backgroundColor: MyColors.primaryLight,
                    child: Image.asset(
                      "assets/icons/chatIcon.png",
                      color: MyColors.primary,
                      height: 20,
                    ),
                  ),
                  RoundedIconButton(
                    heroTag: "notifications",
                    icon: Icons.notifications,
                    backgroundColor: MyColors.primaryLight,
                    onPressed: () {
                      Navigator.pushNamed(context, '/NotificationScreen');
                    },
                  ),
                  RoundedIconButton(
                    heroTag: "menu",
                    icon: Icons.more_horiz,
                    backgroundColor: MyColors.primaryLight,
                    onPressed: () {
                      Navigator.pushNamed(context, '/NotificationScreen');
                    },
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  MyColors.white,
                  Colors.grey[100],
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedContainer(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalText(
                        text: "Today, 16:39  *  Ready",
                        fontSize: 14,
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: MyColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      NormalText(
                        text: "11.3 \n Km",
                        textAlign: TextAlign.start,
                        txtColor: MyColors.greyText,
                        fontSize: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
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
                                              "Parateek Wisteria Sector 77, Nioda, Uttar Pradhan",
                                          txtColor: MyColors.black,
                                          fontSize: 14,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        NormalText(
                                          text:
                                              "Parateek Wisteria Sector 77, Nioda, Uttar Pradhan",
                                          txtColor: MyColors.black,
                                          fontSize: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Column(
                                children: [
                                  CircleAvatarWidget(
                                    imagePath: "assets/avatar/avatar1.png",
                                  ),
                                  SizedBox(height: 5,),
                                  NormalText(text: "Ken",fontSize: 14,),
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedContainer(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: MyColors.primary, width: 2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: MyColors.primary,
                  ),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
