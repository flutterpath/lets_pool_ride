import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {

  final Widget child;
  final double height;
  final double radius;

  const ElevatedContainer({Key key, this.child, this.height, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(left: 6,right: 6,top: 10,bottom: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 10.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
