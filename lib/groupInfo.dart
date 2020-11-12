import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/appBar/appBarSpaceBetween.dart';
import 'package:lets_pool/widgets/circleAvatarWidget.dart';
import 'package:lets_pool/widgets/containers/elevatedContainer.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';
import 'package:lets_pool/widgets/textFields/normalTextfield.dart';

class GroupInfo extends StatefulWidget {
  @override
  _GroupInfoState createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo>{

  TextEditingController _groupName;
  TextEditingController _description;

  @override
  void initState() {
    _groupName = TextEditingController();
    _groupName.text = "Roj ke Sathi";
    _description = TextEditingController();
    _description.text = "Bunch of noob";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
        child: ListView(
          children: [
            AppBarSpaceBetween(
              title: "Roj ke Sathi",
              suffix: Container(),
            ),
            SizedBox(height: 20,),
            CircleAvatarWidget(
              radius: MediaQuery.of(context).size.height*0.05,
              imagePath: "assets/icons/group.png",
            ),
            SizedBox(height: 10,),
            NormalText(text: "Edit Group Icon",fontSize: 14,textAlign: TextAlign.center,txtColor: MyColors.primary,),
            SizedBox(height: 30,),
            NormalTextField(
              labelText: "Group Name",
              controller: _groupName,
            ),
            SizedBox(height: 20,),
            NormalTextField(
              labelText: "Description",
              controller: _description,
            ),SizedBox(height: 20,),
            ElevatedContainer(
              radius: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                NormalText(
                  text: "Group type: Private",
                  fontSize: 14,
                ),
                Icon(Icons.arrow_forward_ios)
              ],),
            ),
            SizedBox(
              height: 30,
            ),
            TextBold(
              text: "Members",
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index){
              return Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(radius: 20,backgroundImage: AssetImage("assets/avatar/avatar1.png",)),
                        SizedBox(width: 10,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextBold(
                                text: "Manvi Raj",
                                fontSize: 14,
                              ),
                              SizedBox(height: 5,),
                              NormalText(text: "Rider/Passenger",fontSize: 12,)
                            ],
                          ),
                        ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    SizedBox(height: 10,),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
