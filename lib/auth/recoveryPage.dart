import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/textFields/elevatedRoundTextfield.dart';
import 'package:lets_pool/widgets/buttons/gFilledButton.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';
import 'package:lets_pool/widgets/text/text32Bold.dart';

class RecoveryPage extends StatefulWidget {
  @override
  _RecoveryPageState createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              height: 45,
              width: width,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){}),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text32Bold(
              text: "Recovery",
            ),
            SizedBox(height: 10,),
            Text16SemiBold(
              text: "Enter email to receive recovery code",
              color: MyColors.black,
            ),
            SizedBox(height: height*0.1,),
            ElevatedRoundTextField(
              hintText: "Email",
            ),
            SizedBox(height: height*0.15,),
            Text16SemiBold(
              text: "Make sure you already confirmed your email. By pressing button below, you’ll get an email with recovery code. Input this code on the next page to reset your password",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            GFilledButton(
              btnText: "Get The Code",
            )
          ],
        ),
      ),
    );
  }
}
