import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/animation/fadeAnimation.dart';
import 'package:lets_pool/widgets/appBar/backAppbar.dart';
import 'package:lets_pool/widgets/textFields/elevatedRoundTextfield.dart';
import 'package:lets_pool/widgets/buttons/gFilledButton.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';
import 'package:lets_pool/widgets/text/text32Bold.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            BackAppBar(onPressed: (){},),
            SizedBox(height: 10,),
            FadeAnimation(delay: 1,child: Text32Bold(text: "New Password",)),
            SizedBox(height: 10,),
            FadeAnimation(delay: 1.1,child:Text16SemiBold(
              text: "Enter your new password",
              color: MyColors.black,
            ),),
            SizedBox(height: 10,),
            FadeAnimation(delay: 1.2,child:ElevatedRoundTextField(
              hintText: "New Password",
              obscureText: true,
            ),),
            FadeAnimation(delay: 1.3,child:ElevatedRoundTextField(
              hintText: "Confirm Password",
              obscureText: true,
            ),),
            SizedBox(height: 30,),
            SvgPicture.asset("assets/illustration/password.svg", height: height*0.3,),
            SizedBox(height: 30,),
            FadeAnimation(delay: 1.4,child:GFilledButton(btnText: "Confirm",),),
          ],
        ),
      ),
    );
  }
}
