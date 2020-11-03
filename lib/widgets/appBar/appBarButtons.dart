import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

import '../buttons/roundedIconButton.dart';

class AppBarButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 120,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 60),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconButton(
            elevation: 5,
            icon: Icons.menu,
            backgroundColor: MyColors.white,
            onPressed: (){},
          ),
          Row(
            children: [
              FloatingActionButton(
                elevation: 5,
                onPressed: (){},
                backgroundColor: MyColors.white,
                child: Image.asset("assets/icons/chatIcon.png", color: MyColors.primary,height: 20,),
              ),
              SizedBox(width: 10,),
              RoundedIconButton(
                elevation: 5,
                icon: Icons.notifications,
                backgroundColor: MyColors.white,
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}
