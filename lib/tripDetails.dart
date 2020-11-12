import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarWithWidgets.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/points/gradientPoint.dart';
import 'package:lets_pool/widgets/points/gradientPoint1.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class TripDetails extends StatefulWidget {
  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    Widget iconWithText({Widget icon, String text, String subText}) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBold(
                text: text,
                fontSize: 16,
              ),
              SizedBox(
                height: 3,
              ),
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

    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          AppBarWithWidgets(
            title: "Trip Details",
            suffix: FloatingActionButton(
              elevation: 0,
              onPressed: () {},
              backgroundColor: MyColors.primaryLight,
              child: Image.asset(
                "assets/icons/destination.png",
                height: 25,
              ),
            ),
          ),
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey[200], MyColors.white])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
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
                    SizedBox(width: 5,),
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconWithText(
                        icon: ColorPoint(
                          color: MyColors.primary,
                        ),
                        text: "20 min",
                        subText: "Time"),
                    iconWithText(
                        icon: ColorPoint(
                          color: MyColors.primary,
                        ),
                        text: "96",
                        subText: "Points"),
                    iconWithText(
                        icon: Image.asset(
                          "assets/icons/fuel.png",
                          height: 20,
                        ),
                        text: "5.0pts/Km",
                        subText: "Fuel Points"),
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ElevatedContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextBold(
                                          text: "Manav Rajput",
                                          fontSize: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                              children: [
                                Column(
                                  children: [
                                    NormalText(
                                      fontSize: 14,
                                      text: "8.7",
                                      txtColor: MyColors.greyText,
                                    ),
                                    NormalText(
                                      fontSize: 14,
                                      text: "Km",
                                      txtColor: MyColors.greyText,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5,),
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
                                            lineLength: 20,
                                            dashLength: 5,
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
                                      SizedBox(width: 5,),
                                      Expanded(
                                                                              child: Column(
                                          children: [
                                            NormalText(
                                              text:
                                                  "Parateek Wisteria Sector 77,eifr r Nioda, Uttar Pradhan",
                                              txtColor: MyColors.black,
                                              fontSize: 14,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            NormalText(
                                              text:
                                                  "Parateek Wisteria Sector 77,eifr r Nioda, Uttar Pradhan",
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
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                iconWithText(
                                    icon: GradientPoint1(),
                                    text: "16:28",
                                    subText: "Pick up"),
                                iconWithText(
                                    icon: ColorPoint(
                                      color: MyColors.redGraDark,
                                    ),
                                    text: "17:28",
                                    subText: "Drop"),
                                iconWithText(
                                    icon: GradientPoint(),
                                    text: "128",
                                    subText: "Points"),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MyColors.white, Colors.grey[200],])),
          ),
          Container(
            color: MyColors.white,
            padding: const EdgeInsets.all(20),
            child: FilledButton(btnText: "Rate Your Passenger",onPressed: (){},btnWidth: width,)),
        ],
      ),
    );
  }
}
