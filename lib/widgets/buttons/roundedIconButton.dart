import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class RoundedIconButton extends StatelessWidget {
  final void Function() onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double iconSize;
  final String imageIcon;
  final double imageHeight;
  final double elevation;
  final Object heroTag;

  const RoundedIconButton({Key key, this.onPressed, this.backgroundColor, this.icon, this.iconSize, this.iconColor, this.elevation, this.imageIcon, this.imageHeight, this.heroTag,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      elevation: elevation ?? 0,
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? MyColors.white,
      child: Icon(icon ?? Icons.navigation, size: iconSize ?? 25.0, color: iconColor ?? MyColors.primary,),
    );
  }
}
