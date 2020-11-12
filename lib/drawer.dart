import 'package:flutter/material.dart ';
import 'package:lets_pool/utils/my_color.dart';
import 'package:lets_pool/widgets/text/normalText.dart';
import 'package:lets_pool/widgets/text/textBold.dart';

class  MyDrawer extends StatelessWidget {
  Widget iconWithTitle(String imgPath, String title, {void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
          child: ListTile(
        leading: Image.asset(
          imgPath,
          height: 25,
        ),
        title: TextBold(
          text: title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(
                      "assets/avatar/avatar3.png",
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBold(
                          text: "Manav Raval",
                          fontSize: 18,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(
                              text: "Verified",
                              fontSize: 14,
                              txtColor: MyColors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: MyColors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/courseIcon.png", "Dashboard",onTap:() => Navigator.pop(context)),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/car.png", "My ride", onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/MyRide');
            }),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/cardIcon.png", "My payment", onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/MyWallet');
            }),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/vehicleIcon.png", "My vehicles", onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/MyRide');
            }),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/iconChat.png", "Chat", onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/ChatHome');
            }),
            SizedBox(
              height: 20,
            ),
            iconWithTitle("assets/icons/iconGroup.png", "Group", onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/ChatHome');
            }),
            Spacer(),
            Divider(
              color: MyColors.grey,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: MyColors.primary,
                      child: Image.asset(
                        "assets/icons/switchIcon.png",
                        height: 25,
                      ),
                    ),
                    SizedBox(width: 10,),
                     TextBold(text: "Switch Account",),
                 ],
               ),
                 Icon(Icons.arrow_forward_ios),
            ],)
          ],
        ),
      ),
    );
  }
}
