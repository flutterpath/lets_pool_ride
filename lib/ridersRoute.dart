import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarWithWidgets.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/points/gradientPoint.dart';
import 'package:lets_pool/widgets/points/gradientPoint1.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';
import 'package:lets_pool/widgets/text/textBold.dart';
import 'package:location/location.dart';

class RidersRoute extends StatefulWidget {
  @override
  _RidersRouteState createState() => _RidersRouteState();
}

class _RidersRouteState extends State<RidersRoute> {

  Completer<GoogleMapController> _controller = Completer();
  MapType _currentMapType = MapType.normal;
  static final CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(26.7590, 79.6382),
    zoom: 12,
    bearing: 15.0,
    tilt: 75.0,

  );

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _currentLocation() async {
    final GoogleMapController controller = await _controller.future;
    LocationData currentLocation;
    var location = new Location();
    try {
      currentLocation = await location.getLocation();
    } on Exception {
      currentLocation = null;
    }

    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 17.0,
      ),
    ));
  }

    Widget iconWithText({Widget icon, String text, String subText}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(width: 5,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBold(
              text: text,
              fontSize: 16,
            ),
            SizedBox(height: 3,),
            NormalText(
              text: subText,
              txtColor: MyColors.greyText,
              fontSize: 12,
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _cameraPosition,
            mapType: _currentMapType,
            onMapCreated: _onMapCreated,
            compassEnabled: false,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
          ),
          Align(
            alignment: Alignment(0.0, -1.0),
            child: Column(
              children: [
                AppBarWithWidgets(
                  title: "Rider's Route",
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: MyColors.primary,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              ColorPoint(color: MyColors.white,height: 8,width: 8,),
                              DottedLine(lineLength: 25,dashLength: 4,direction: Axis.vertical,dashGapLength: 2,dashColor: MyColors.white,),
                              Icon(Icons.location_on, size: 15, color: MyColors.white,)
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                NormalText(text: "Parateek Wisteria Sector 77, Nioda, Uttar Pradhan",txtColor: MyColors.white,fontSize: 14,),
                                SizedBox(height: 14,),
                                NormalText(text: "Parateek Wisteria Sector 77, Nioda, Uttar Pradhan",txtColor: MyColors.white,fontSize: 14,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.85, 0.13),
            child: RoundedIconButton(
              onPressed: (){},
              backgroundColor: MyColors.white,
              icon: Icons.navigation,
              elevation: 5,
            ),
          ),
          Align(
            alignment: Alignment(0.85, 0.33),
            child: RoundedIconButton(
              onPressed: _currentLocation,
              backgroundColor: MyColors.white,
              icon: Icons.my_location,
              elevation: 5,
            ),
          ),
          Align(
            alignment: Alignment(0, 0.95),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedContainer(
                height: MediaQuery.of(context).size.height*0.26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 22,backgroundImage: AssetImage("assets/avatar/avatar3.png",)),
                      SizedBox(width: 10,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBold(
                              text: "Manav Raj",
                              fontSize: 20,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: MyColors.golden,size: 15,),
                                SizedBox(width: 5,),
                                TextBold(
                                  text :"4.8 ",
                                  fontSize: 12,
                                ),
                                NormalText(
                                  text: "(289)",
                                  fontSize: 12,
                                  txtColor: MyColors.greyText,
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.directions_car_rounded, color: MyColors.grey, size: 15,)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  NormalText(
                    text: "Marathalli, Bengaluru, Karnataka,India, Madiwata, Hosur Road, Silk board",
                    fontSize: 14,
                    txtColor: MyColors.grey,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconWithText(icon: GradientPoint1(), text: "16:28", subText: "Time"),
                      iconWithText(icon: Image.asset("assets/icons/chatIcon.png",height: 16,), text: "96%", subText: "Ontime"),
                      iconWithText(icon: GradientPoint(), text: "128", subText: "Points"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(btnText: "Request",btnWidth: width*0.35,onPressed: (){},),
                    ],
                  )
                ],
              ),
          ),
            )
          )
        ],
      )
    );
  }
}
