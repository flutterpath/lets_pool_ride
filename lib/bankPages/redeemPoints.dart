import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/containers/elevatedSquareContainer.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/textFields/normalTextfield.dart';

class RedeemPoints extends StatefulWidget {
  @override
  _RedeemPointsState createState() => _RedeemPointsState();
}

class _RedeemPointsState extends State<RedeemPoints> {

  TextEditingController _amount;

  @override
  void initState() {
    _amount = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: ListView(
          children: [
            AppBarSpaceBetween(
              suffix: Container(),
              title: "Redeem Points",
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                ElevatedSquareContainer(
                  width: width*0.25,
                  child: Image.asset("assets/logo/bank1.png",height: 20,),
                ),
                SizedBox(width: 10,),
                Expanded(child: NormalText(text: "Australia and New Zealand Banking Group",fontSize: 14,overflow: TextOverflow.visible,))
              ],
            ),
            SizedBox(height: 10,),
            NormalTextField(controller: _amount,maxLength: 6,labelText: "Enter Points Amount",),
            SizedBox(height: 20,),
            Container(
              height: 300,
              child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return ElevatedSquareContainer(
                      child: Image.asset(
                        "assets/logo/bank1.png",
                        height: 20,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey[100],
                      MyColors.white
                    ]
                )
            ),
          ),
          Container(color: MyColors.white,padding: const EdgeInsets.all(20),child: FilledButton(btnText: "Redeem",onPressed: (){},btnWidth: width,)),
        ],
      ),
    );
  }
}
