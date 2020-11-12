import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/animation/fadeAnimation1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/OnBoarding'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            MyColors.pGradientDark,
            MyColors.pGradientLight,
          ],
        ),
      ),
      child: FadeAnimation1(
        delay: 2,
              child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: MyColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.white,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 30.0,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/logo/logo.png",
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ],
                  ),
      ),
    ),
    );
  }


}


