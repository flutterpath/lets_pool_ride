import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/textFields/normalTextfield.dart';

class FindRide extends StatefulWidget {
  @override
  _FindRideState createState() => _FindRideState();
}

class _FindRideState extends State<FindRide> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                ColorPoint(color: MyColors.a1GradientDark,height: 8,width: 8,),
                DottedLine(lineLength: 50,dashLength: 4,direction: Axis.vertical,dashGapLength: 5,dashColor: MyColors.greyText,),
                Icon(Icons.location_on, size: 15, color: MyColors.redGraDark,)
              ],
            ),
              SizedBox(width: 10,),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width-120,child: NormalTextField(hintText: "Choose your starting point",),),
                  SizedBox(height: 14,),
                  SizedBox(width: MediaQuery.of(context).size.width-120,child: NormalTextField(hintText: "Choose destination",),),
                ],
              ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.access_time_outlined, color: MyColors.black,size: 15,),
                  SizedBox(width: 10,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.3,child: NormalTextField(hintText: "Pick a time",),),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.group_outlined, color: MyColors.black,size: 15,),
                  SizedBox(width: 10,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.3,child: NormalTextField(hintText: "No. of people",),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(Icons.sticky_note_2_outlined, color: MyColors.black,size: 15,),
            SizedBox(width: 10,),
            SizedBox(width: MediaQuery.of(context).size.width-120,child: NormalTextField(hintText: "Special instruction (ex. pet, language)",),),
          ],
        ),
        SizedBox(height: 20,),
        FilledButton(btnText: "Find", btnWidth: MediaQuery.of(context).size.width, onPressed: (){},),
        SizedBox(height: 10,),
      ],
    );
  }
}
