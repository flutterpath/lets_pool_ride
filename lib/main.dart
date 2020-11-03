import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:lets_pool/checkIn.dart';
import 'package:lets_pool/dashBoard/dashBoard.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashBoard(),
    );
  }
}
