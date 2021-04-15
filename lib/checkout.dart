import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarWithWidgets.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:lets_pool/widgets/points/gradientPoint.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  Widget iconWithText({Widget icon, String text, String subText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(
          width: 10,
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

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          AppBarWithWidgets(
            title: "Checkout Details",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(
                          "assets/avatar/avatar1.png",
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
                              text: "Manav Rajput",
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
                  height: 20,
                ),
                NormalText(
                  text:
                      "Marathalli, Bengaluru, Karnataka,India, Madiwata, Hosur Road, Silk board",
                  fontSize: 14,
                  txtColor: MyColors.grey,
                  overflow: TextOverflow.visible,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconWithText(
                        icon: GradientPoint(), text: "20 min", subText: "Time"),
                    iconWithText(
                        icon: Image.asset(
                          "assets/icons/fuel.png",
                          height: 20,
                          color: MyColors.a1GradientDark,
                        ),
                        text: "5.0pts/Km",
                        subText: "Fuel/Points"),
                    iconWithText(
                        icon: ColorPoint(
                          color: MyColors.redGraLight,
                        ),
                        text: "128",
                        subText: "Points"),
                  ],
                ),
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
                    colors: [
                  MyColors.white,
                  Colors.grey[200],
                ])),
          ),
          Container(
              color: MyColors.white,
              padding: const EdgeInsets.all(20),
              child: FilledButton(
                btnText: "Rate Your Rider",
                onPressed: () {
                  AwesomeDialog(
                    dismissOnTouchOutside: false,
                    context: context,
                    animType: AnimType.SCALE,
                    body: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Column(
                      children: [
                        TextBold(
                          text: "Manav Rajput",
                          fontSize: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        NormalText(
                          text:
                              "Marathalli, Bengaluru, Karnataka,India, Madiwata, Hosur Road, Silk board",
                          fontSize: 14,
                          txtColor: MyColors.grey,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.grey[200],
                  MyColors.white,
                ])),
          ),
          SizedBox(
                    height: 10,
                  ),
                  NormalText(
                    text: "Rate your passenger",
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RatingBar(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    glow: false,
                    itemCount: 5,
                    itemSize: 35,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (double value) {},
                  ),
                  SizedBox(height: 20,),
                      ],
                    ),
                    Positioned(
                        bottom: -40,
                        left: width*0.5-182,
                        child: FilledButton(btnText: "Submit",onPressed :(){}, btnWidth: width*0.7,))
                      ],
                    ),
                    customHeader: CircleAvatarWidget(
                      radius: 45,
                      imagePath: "assets/avatar/avatar3.png",
                    ),
                  )..show();
                },
                btnWidth: width,
              )),
        ],
      ),
    );
  }
}
