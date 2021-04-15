import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lets_pool/widgets/buttons/gFilledButton.dart';

class LocationDeclaration extends StatefulWidget {
  @override
  _LocationDeclarationState createState() => _LocationDeclarationState();
}

class _LocationDeclarationState extends State<LocationDeclaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/onBoarding/map.gif"),
                    ),
                  ),
                ),
              ),
              Text(
                "Let's pool ride need your location - ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "• To get your current location",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "• You can deny if you don't want to allow to access current location",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "• The location will not be stored anywhere",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.4,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                              child: GFilledButton(
                    btnText: "Continue",
                    onTap: () async {
                      await Geolocator.requestPermission()
                          .then((geolocationStatus) {
                        Navigator.pushReplacementNamed(context, '/SignUp');
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
