import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/textFields/searchTextField.dart';

class BankList extends StatefulWidget {
  @override
  _BankListState createState() => _BankListState();
}

class _BankListState extends State<BankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: ListView(
          children: [
            AppBarSpaceBetween(
              title: "Add Bank",
              suffix: Container(),
            ),
            SizedBox(height: 10,),
            SearchTextField()
          ],
        ),
      ),
    );
  }
}
