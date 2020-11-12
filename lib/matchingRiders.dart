import 'package:flutter/material.dart';
import 'package:lets_pool/matchingRideGroups.dart';
import 'package:lets_pool/newInvite.dart';
import 'package:lets_pool/riders.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/circularTabIndicator.dart';

class MatchingRiders extends StatefulWidget {
  @override
  _MatchingRidersState createState() => _MatchingRidersState();
}

class _MatchingRidersState extends State<MatchingRiders> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            AppBarSpaceBetween(
              title: "Matching Ride Givers",
              suffix: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: MyColors.primaryLight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(Icons.search,size: 20, color: MyColors.primary,),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: CircleTabIndicator(color: MyColors.primary, radius: 4),
              isScrollable: true,
              labelColor: MyColors.primary,
              unselectedLabelColor: MyColors.grey,
              tabs: [
                Tab(text: 'New Invite'),
                Tab(text: 'Riders'),
                Tab(text: 'Favourite'),
                Tab(text: 'Groups'),
                Tab(text: 'Contacts'),

              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height-130,
              child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    NewInvite(),
                    Riders(),
                    Riders(),
                    MatchingRideGroup(),
                    Riders(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
