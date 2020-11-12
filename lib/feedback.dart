import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarWithWidgets.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          AppBarWithWidgets(
            title: "Feedback",
            suffix: FloatingActionButton(
                elevation: 0,
                onPressed: () {},
                backgroundColor: MyColors.primaryLight,
                child: Icon(
                  Icons.more_horiz,
                  color: MyColors.primary,
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
                    colors: [Colors.grey[200], MyColors.white],),),
          ),
          Expanded(
                      child: ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index){
              return Padding(
             padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Column(
                children: [
                  ElevatedContainer(
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                          top: -55,
                          left: width*0.5-80,
                          child: CircleAvatarWidget(
                            radius: 35,
                            imagePath: "assets/avatar/avatar1.png",
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            TextBold(
                              text: "Kimmy Natasa",
                              fontSize: 18,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            NormalText(
                              text:
                                  "Marathalli, Bengaluru, Karnataka,India, Madiwata, Hosur Road, Silk board",
                              fontSize: 14,
                              overflow: TextOverflow.visible,
                              txtColor: MyColors.grey,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
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
                                            "Parateek Wisteria Sector 77,Nioda, Uttar Pradhan",
                                        txtColor: MyColors.black,
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        height: 14,
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                    itemCount: 5,
                    itemSize: 45,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (double value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FilledButton(btnText: "Submit",onPressed: (){},btnWidth: width,),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
            }),
          )
        ],
      ),
    );
  }
}
