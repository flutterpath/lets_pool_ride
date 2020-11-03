import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { width, height }
class FadeAnimation1 extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation1({this.delay, this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.elasticIn)
    ]);

    return CustomAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]),
            child: child
        ),
      ),
    );
  }
}