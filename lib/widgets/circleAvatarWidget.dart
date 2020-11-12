import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double radius;
  final String imagePath;
  final Color bgColor;

  const CircleAvatarWidget({Key key, this.radius, this.imagePath, this.bgColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor ?? MyColors.primary,
      radius: radius ?? 22,
      child: Image.asset(imagePath ?? "assets/avatar/avatar1.png",),
      // backgroundImage: AssetImage(imagePath ?? "assets/avatar/avatar1.png",)
      );
  }
}
