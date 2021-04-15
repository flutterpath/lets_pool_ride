import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_pool/dashBoard/findRide.dart';
import 'package:lets_pool/dashBoard/offerRide.dart';
import 'package:lets_pool/drawer.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarButtons.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';
import 'package:location/location.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with SingleTickerProviderStateMixin{

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

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _cameraPosition,
            mapType: _currentMapType,
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            trafficEnabled: true,
            buildingsEnabled: true,
            rotateGesturesEnabled: true,
            scrollGesturesEnabled: true,
            tiltGesturesEnabled: true,
            myLocationButtonEnabled: false,
            compassEnabled: false,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
          ),
          Align(
            alignment: Alignment(0.88, -0.1),
            child: RoundedIconButton(
              heroTag: "currentLocation",
              onPressed: _currentLocation,
              backgroundColor: MyColors.white,
              icon: Icons.my_location,
              elevation: 5,
            ),
          ),
          Align(
            alignment: Alignment(0.0, -1.0),
            child: AppBarButtons(),
          ),
          Align(
            alignment: Alignment(0, 0.95),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: ElevatedContainer(
                height: MediaQuery.of(context).size.height*0.46,
                child: ListView(
                  children: [
                    TabBar(
                      indicatorPadding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.label,
                        controller: _tabController,
                        unselectedLabelColor: MyColors.black,
                        labelColor: MyColors.primary,
                        unselectedLabelStyle: TextStyle(color: MyColors.black),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColors.primaryLight),
                            indicatorWeight: 0,
                        tabs: [
                          Tab(
                            child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.search,size: 20,),
                                    SizedBox(width: 5,),
                                    Text("Find Ride"),
                                  ],
                                )
                            ),
                          ),
                          Tab(
                            child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_car_sharp,size: 20,),
                                    SizedBox(width: 5,),
                                    Text("Offer Ride")
                                  ],
                                )
                            ),
                          ),
                        ]),
                    Container(
                      height: MediaQuery.of(context).size.height*0.35,
                      child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            FindRide(),
                            OfferRide(),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
