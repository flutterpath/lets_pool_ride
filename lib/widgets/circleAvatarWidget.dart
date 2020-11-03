import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double radius;
  final String imagePath;

  const CircleAvatarWidget({Key key, this.radius, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: radius ?? 22,backgroundImage: AssetImage(imagePath ?? "assets/avatar/avatar1.png",));
  }
}
