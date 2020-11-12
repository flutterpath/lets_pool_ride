import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/animation/fadeAnimation.dart';
import 'package:lets_pool/widgets/appBar/backAppbar.dart';
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            BackAppBar(
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation(
              delay: 1,
              child: Text32Bold(
                text: "Recovery",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation(
              delay: 1.1,
              child: Text16SemiBold(
                text: "Enter email to receive recovery code",
                color: MyColors.black,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            FadeAnimation(
              delay: 1.2,
              child: ElevatedRoundTextField(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            FadeAnimation(
              delay: 1.3,
              child: Text16SemiBold(
                text:
                    "Make sure you already confirmed your email. By pressing button below, you’ll get an email with recovery code. Input this code on the next page to reset your password",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            FadeAnimation(
              delay: 1.4,
              child: GFilledButton(
                btnText: "Get The Code",
                onTap: () {
                  Navigator.pushNamed(context, '/OTPPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
