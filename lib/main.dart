import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:lets_pool/auth/newPassword.dart';
import 'package:lets_pool/auth/otp.dart';
import 'package:lets_pool/auth/recoveryPage.dart';
import 'package:lets_pool/auth/signIn.dart';
import 'package:lets_pool/auth/signUp.dart';
import 'package:lets_pool/bankPages/addBankAccount.dart';
import 'package:lets_pool/bankPages/bankList.dart';
import 'package:lets_pool/bankPages/redeemPoints.dart';
import 'package:lets_pool/chatPages/chatDialog.dart';
import 'package:lets_pool/chatPages/chatHome.dart';
import 'package:lets_pool/chatPages/chatPage.dart';
import 'package:lets_pool/checkIn.dart';
import 'package:lets_pool/checkout.dart';
import 'package:lets_pool/dashBoard/dashBoard.dart';
import 'package:lets_pool/dashBoard/notification.dart';
import 'package:lets_pool/feedback.dart';
import 'package:lets_pool/groupInfo.dart';
import 'package:lets_pool/matchingPassenger/matchingPassenger.dart';
import 'package:lets_pool/matchingRiders/matchingRiders.dart';
import 'package:lets_pool/myRide.dart';
import 'package:lets_pool/myWallet.dart';
import 'package:lets_pool/onBoarding/onBoarding.dart';
import 'package:lets_pool/ridersRoute.dart';
import 'package:lets_pool/splash.dart';
import 'package:lets_pool/tripDetails.dart';
import 'package:lets_pool/utils/my_color.dart';

void main() {
  GoogleMap.init("AIzaSyBBfxdM8iNpr-mGEsmUvP81nvZlf33Q9GM");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Pool',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColors.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
       '/': (context) => SplashScreen(),
        '/RedeemPoints': (context) => RedeemPoints(),
        '/MyRide': (context) => MyRide(),
        '/OTPPage': (context) => OTPPage(),
        '/NotificationScreen': (context) => NotificationScreen(),
        '/NewPassword': (context) => NewPassword(),
        '/RecoveryPage': (context) => RecoveryPage(),  
        '/SignIn': (context) => SignIn(),
        '/SignUp': (context) => SignUp(),
        '/GroupInfo': (context) => GroupInfo(),
        '/ChatPage': (context) => ChatPage(),
        '/AddBankAccount': (context) => AddBankAccount(),
        '/BankList': (context) => BankList(),
        '/DashBoard': (context) => DashBoard(),
        '/OnBoarding': (context) => OnBoarding(),
        '/ChatHome': (context) => ChatHome(),
        '/ChatDialog': (context) => ChatDialog(),
        '/CheckIn': (context) => CheckIn(),
        '/Checkout': (context) => Checkout(),
        '/FeedBack': (context) => FeedBack(),
        '/MatchingPassenger': (context) => MatchingPassenger(),
        '/MatchingRiders': (context) => MatchingRiders(),
        '/MyWallet': (context) => MyWallet(),
        '/RidersRoute': (context) => RidersRoute(),
        '/TripDetails': (context) => TripDetails(),
      }, 
    );
  }
}
