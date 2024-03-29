import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarText.dart';
import 'package:lets_pool/widgets/containers/elevatedSquareContainer.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
            child: AppBarText(
              title: "My Wallet",
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey[100],
                  MyColors.white
                ]
              )
            ),
          ),
          Container(
            width: width,
            height: 100,
            margin: const EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ],
              image: DecorationImage(image: AssetImage("assets/images/Oval.png")),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NormalText(
                  text: "Quick Ride Wallet",
                  txtColor: MyColors.white,
                  fontSize: 18,
                ),
                TextBold(
                  text: "43.92 Points",
                  fontSize: 18,
                  txtColor: MyColors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: NormalText(
              text: "Add your favourite wallet to pay and redeem directly.",
              overflow: TextOverflow.visible,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20,),
            Container(
              height: 150,
              child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return (index == 2) ?
                    GestureDetector(
                      onTap:() => Navigator.pushNamed(context, '/BankList'),
                                          child: ElevatedSquareContainer(
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: MyColors.primary, width: 2),
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: MyColors.primary,
                            ),
                          ),
                        ),),
                    )
                    :
                    GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, '/RedeemPoints'),
                                          child: ElevatedSquareContainer(
                        child: Image.asset(
                          "assets/logo/bank1.png",
                          height: 20,
                        ),
                      ),
                    );
                  }),
            )
        ],
      ),
    );
  }
}
