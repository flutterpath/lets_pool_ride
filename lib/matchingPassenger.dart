import 'package:flutter/material.dart';
import 'package:lets_pool/newRequest.dart';
import 'package:lets_pool/passenger.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/circularTabIndicator.dart';

class MatchingPassenger extends StatefulWidget {
  @override
  _MatchingPassengerState createState() => _MatchingPassengerState();
}

class _MatchingPassengerState extends State<MatchingPassenger> with SingleTickerProviderStateMixin{

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
              title: "Matching Passenger",
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
                Tab(text: 'New Request'),
                Tab(text: 'Passenger'),
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
                    NewRequest(),
                    Passenger(),
                    Passenger(),
                    Passenger(),
                    Passenger(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
