import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/containers/elevatedSquareContainer.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/textFields/normalTextfield.dart';

class AddBankAccount extends StatefulWidget {
  @override
  _AddBankAccountState createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {

  TextEditingController _ownerName;
  TextEditingController _accountNo;
  TextEditingController _bankBrand;

  @override
  void initState() {
    _ownerName = TextEditingController();
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
              title: "New Bank Account",
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                ElevatedSquareContainer(
                  child: Image.asset("assets/logo/bank1.png",height: 20,),
                ),
                SizedBox(width: 10,),
                Expanded(child: NormalText(text: "Australia and New Zealand Banking Group",fontSize: 14,))
              ],
            ),
            SizedBox(height: 10,),
            NormalText(text: "Bank account owner’s name must be match your name on your indetification card",fontSize: 14,),
            SizedBox(height: 20,),
            NormalTextField(hintText: "Bank Account Owner Name",controller: _ownerName,maxLength: 30,),
            SizedBox(height: 20,),
            NormalTextField(hintText: "Bank Account Number",controller: _accountNo,maxLength: 20,),
            SizedBox(height: 20,),
            NormalTextField(hintText: "Bank Brand",controller: _bankBrand, suffix: Icon(Icons.keyboard_arrow_down, color: MyColors.black,),readOnly: true,),
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
          Container(color: MyColors.white,padding: const EdgeInsets.all(20),child: FilledButton(btnText: "Add",onPressed: (){},btnWidth: width,)),
        ],
      ),
    );
  }
}
