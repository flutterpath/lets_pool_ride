import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarWithWidgets.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/buttons/outlineButton.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';
import 'package:lets_pool/widgets/text/textBold.dart';
import 'package:location/location.dart';

class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {

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
                  title: "Tue, 07 Apr 15:39",
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
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlineButton(
                              textColor: MyColors.white,
                              child: Row(
                                children: [
                                  ColorPoint(color: MyColors.white,),
                                  SizedBox(width: 5,),
                                  NormalText(text: "56 Points",txtColor: MyColors.white,fontSize: 14,)
                                ],
                              ),
                              onPressed: (){},
                              borderSide: BorderSide(width: 1, color:  MyColors.white),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),)
                          ),
                          Row(
                            children: [
                              Icon(Icons.directions_walk, color: MyColors.white,),
                              SizedBox(width: 5,),
                              NormalText(text: "10Mts",txtColor: MyColors.white,fontSize: 14,),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_right_outlined, color: MyColors.white,),
                              SizedBox(width: 5,),
                              Icon(Icons.directions_car, color: MyColors.white,),
                              SizedBox(width: 5,),
                              NormalText(text: "8Mts",txtColor: MyColors.white,fontSize: 14,),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.85, 0.05),
            child: RoundedIconButton(
              onPressed: (){},
              backgroundColor: MyColors.white,
              icon: Icons.navigation,
              elevation: 5,
            ),
          ),
          Align(
            alignment: Alignment(0.85, 0.25),
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
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedContainer(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBold(
                          text: "Ride in progress",
                          fontSize: 16,
                        ),
                        NormalText(
                          text: "18 min",
                          fontSize: 14,
                          txtColor: MyColors.primary,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(color: MyColors.divider,),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatarWidget(imagePath: "assets/avatar/avatar1.png",),
                                SizedBox(height: 5,),
                                NormalText(text: "Radhaa",fontSize: 12,),
                              ],
                            ),
                            SizedBox(width: 10,),
                            ColorPoint(color: MyColors.black,),
                            SizedBox(width: 10,),
                            Container(
                              width: width*0.4,
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                direction: Axis.horizontal,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatarWidget(imagePath: "assets/avatar/avatar2.png",),
                                      SizedBox(height: 5,),
                                      NormalText(text: "Ram",fontSize: 12,),
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      CircleAvatarWidget(imagePath: "assets/avatar/avatar3.png",),
                                      SizedBox(height: 5,),
                                      NormalText(text: "Mohan",fontSize: 12,),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        RoundedIconButton(
                          iconSize: 25,
                          onPressed: (){},
                          icon: Icons.search,
                          backgroundColor: MyColors.primaryLight,
                          iconColor: MyColors.primary,
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlineButton(
                          onPressed: (){},
                          btnColor: MyColors.divider,
                          btnText: "Cancel",
                          btnWidth: width*0.35,
                        ),
                        FilledButton(
                          btnText: "Check in",
                          onPressed: (){
                            Navigator.pushNamed(context, '/Checkout');
                          },
                          btnWidth: width*0.35,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
