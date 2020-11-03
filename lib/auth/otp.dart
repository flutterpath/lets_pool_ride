import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/backAppbar.dart';
import 'package:lets_pool/widgets/buttons/gFilledButton.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';
import 'package:lets_pool/widgets/text/text32Bold.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {

  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();

  // ignore: close_sinks
  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            BackAppBar(),
            SizedBox(height: 10,),
            Text32Bold(
              text: "Recovery",
            ),
            SizedBox(height: 10,),
            Text16SemiBold(
              text: "Enter the recovery code you received",
              color: MyColors.black,
            ),
            SizedBox(height: height*0.1,),
            Form(
              key: formKey,
              child: PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                backgroundColor: Colors.transparent,
                appContext: context,
                length: 4,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveColor: MyColors.primary,
                  fieldHeight: 60,
                  fieldWidth: 50,
                  activeFillColor:
                  hasError ? Colors.orange : Colors.white,
                  shape: PinCodeFieldShape.circle,
                  borderRadius: BorderRadius.circular(20),
                ),
                cursorColor: MyColors.black,
                animationDuration: Duration(milliseconds: 300),
                textStyle: TextStyle(fontSize: 20, height: 1.4),
                errorAnimationController: errorController,
                controller: textEditingController,
                keyboardType: TextInputType.number,
              ),
            ),
            SvgPicture.asset("assets/illustration/otp.svg", height: height*0.3,),
            SizedBox(height: 50,),
            GFilledButton(
              btnText: "Submit",
            )
          ],
        ),
      ),
    );
  }
}
