import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lets_pool/widgets/animation/fadeAnimation.dart';
import 'package:lets_pool/widgets/animation/fadeAnimation1.dart';
import 'package:lets_pool/auth/signUp.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/textFields/elevatedRoundTextfield.dart';
import 'package:lets_pool/widgets/buttons/gFilledButton.dart';
import 'package:lets_pool/widgets/text/text16SemiBold.dart';
import 'package:lets_pool/widgets/text/text32Bold.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MyColors.pGradientDark,
                      MyColors.pGradientLight
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90)
                  )
              ),
              child: FadeAnimation1(
                delay: 1.1,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                      Positioned(
                        top: 50,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/logo/logo.png", height: MediaQuery.of(context).size.height*0.2,),
                              Text16SemiBold(text: "LET'S POOL",color: MyColors.white,)
                            ],
                          ),
                      ),
                  ],
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  FadeAnimation(delay: 1,child: Align(alignment: Alignment.centerLeft,child: Text32Bold(text: "Welcome Back!",))),
              SizedBox(height: 10,),
              FadeAnimation(
                delay: 1.1,
                child: Align(alignment: Alignment.centerLeft,child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                              color: MyColors.black, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(text: ' Sign up now!',
                                style: TextStyle(
                                    color: MyColors.primary, fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUp()),
                                    );
                                  }
                            )
                          ]
                      ),
                    ),),
              ),
                  SizedBox(height: 30,),
                  FadeAnimation(
                    delay: 1.2,
                    child: ElevatedRoundTextField(
                      hintText: 'Email',
                    )
                  ),
                  FadeAnimation(
                    delay: 1.3,
                    child: ElevatedRoundTextField(
                      hintText: 'Password',
                    )
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(
                    delay: 1.4,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: MyColors.grey,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  FadeAnimation(
                    delay: 1.5,
                    child: GFilledButton(btnText: "Sign in",)
                  ),
                  FadeAnimation(
                    delay: 1.6,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: Text("---  OR  ---"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FadeAnimation1(delay: 1.3,child: Image.asset("assets/logo/google.png",height: 50,)),
                      FadeAnimation1(delay: 1.4,child: Image.asset("assets/logo/facebook.png",height: 50,),),
                        FadeAnimation1(delay: 1.3,child: Image.asset("assets/logo/twitter.png",height: 50,),)
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}