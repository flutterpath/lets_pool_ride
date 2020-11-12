import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/buttons/filledButton.dart';
import 'package:lets_pool/widgets/buttons/outlineButton.dart';
import 'package:lets_pool/widgets/points/colorPoint.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:lets_pool/widgets/textFields/normalTextfield.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class OfferRide extends StatefulWidget {
  @override
  _OfferRideState createState() => _OfferRideState();
}

class _OfferRideState extends State<OfferRide>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool isChecked = false;

  Widget _carType() {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(hintText: "Body Type", suffix: Icon(Icons.keyboard_arrow_down, color: MyColors.black,),readOnly: true,contentPadding: const EdgeInsets.only(top: 15),),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "License Plate",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "Fuel/Km",
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "Seats Offering",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 120,
          child: NormalTextField(
            hintText: "Brand/Model",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 120,
          child: NormalTextField(
            hintText: "Features",
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _motorbikeType() {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(hintText: "Bike Type", suffix: Icon(Icons.keyboard_arrow_down, color: MyColors.black,),readOnly: true,contentPadding: const EdgeInsets.only(top: 15),),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "License Plate",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "Fuel/Km",
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.34,
              child: NormalTextField(
                hintText: "Seats Offering",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 120,
          child: NormalTextField(
            hintText: "Brand/Model",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 120,
          child: NormalTextField(
            hintText: "Features",
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                ColorPoint(
                  color: MyColors.a1GradientDark,
                  height: 8,
                  width: 8,
                ),
                DottedLine(
                  lineLength: 50,
                  dashLength: 4,
                  direction: Axis.vertical,
                  dashGapLength: 5,
                  dashColor: MyColors.greyText,
                ),
                Icon(
                  Icons.location_on,
                  size: 15,
                  color: MyColors.redGraDark,
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: NormalTextField(
                    hintText: "Choose your starting point",
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: NormalTextField(
                    hintText: "Choose destination",
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    color: MyColors.black,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: NormalTextField(
                      hintText: "Pick a time",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.directions_car_sharp,
                    color: MyColors.black,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: NormalTextField(
                      onTap: () {
                        AwesomeDialog(
                          context: context,
                          headerAnimationLoop: false,
                          dialogType: DialogType.NO_HEADER,
                          btnOk: FilledButton(
                            btnText: "Select",
                            onPressed: () {},
                          ),
                          btnCancel: CustomOutlineButton(
                            btnText: "Cancel",
                            onPressed: () {},
                          ),
                          body: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.32,
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    child: TabBar(
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      controller: _tabController,
                                      unselectedLabelColor: MyColors.black,
                                      labelColor: MyColors.primary,
                                      unselectedLabelStyle:
                                          TextStyle(color: MyColors.black),
                                      indicator: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: MyColors.primaryLight),
                                      tabs: [
                                        Tab(
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.directions_car_sharp,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Car"),
                                                ],
                                              )),
                                        ),
                                        Tab(
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.two_wheeler,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Motorbike"),
                                                ],
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: TabBarView(
                                        controller: _tabController,
                                        children: <Widget>[
                                          _carType(),
                                          _motorbikeType(),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )..show();
                      },
                      readOnly: true,
                      hintText: "Vehicle Type",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.sticky_note_2_outlined,
              color: MyColors.black,
              size: 15,
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 120,
              child: NormalTextField(
                hintText: "Special instruction (ex. pet, language)",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        FilledButton(
          btnText: "Offer",
          btnWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
