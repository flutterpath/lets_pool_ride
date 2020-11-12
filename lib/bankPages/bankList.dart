import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/containers/elevatedSquareContainer.dart';
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
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            AppBarSpaceBetween(
              title: "Add Bank",
              suffix: Container(),
            ),
            SizedBox(
              height: 20,
            ),
            SearchTextField(),
            SizedBox(
              height: 20,
            ),
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
    );
  }
}
