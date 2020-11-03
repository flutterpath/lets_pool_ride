import 'package:flutter/material.dart';

class ElevatedSquareContainer extends StatelessWidget {
  final Widget child;

  const ElevatedSquareContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6,right: 6,top: 10,bottom: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
