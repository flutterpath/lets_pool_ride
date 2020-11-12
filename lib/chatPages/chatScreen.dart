import 'package:flutter/material.dart';
import 'package:lets_pool/chatPages/chatContact.dart';
import 'package:lets_pool/chatPages/chatGroup.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarTextWithSuffix.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/buttons/roundedIconButton.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: AppBarTextWithSuffix(
              title: "Chat",
              onTap: () {
                Navigator.pop(context); 
              },
              suffix: RoundedIconButton(
                backgroundColor: MyColors.primaryLight,
                onPressed: () {},
                icon: Icons.search,
                iconColor: MyColors.primary,
                iconSize: 22,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey[100], MyColors.white])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: MyColors.primaryLight),
                tabs: [
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.contact_page,
                              color: MyColors.primary,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            NormalText(
                              text: "Contact",
                              fontSize: 16,
                              txtColor: MyColors.primary,
                            ),
                          ],
                        )),
                  ),
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.group_sharp,
                              color: MyColors.primary,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            NormalText(
                              text: "Group",
                              fontSize: 16,
                              txtColor: MyColors.primary,
                            ),
                          ],
                        )),
                  ),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: MediaQuery.of(context).size.height - 130,
            child: TabBarView(controller: _tabController, children: <Widget>[
              ChatContact(),
              ChatGroup(),
            ]),
          ),
        ],
      ),
    );
  }
}
