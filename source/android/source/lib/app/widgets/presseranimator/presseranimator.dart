// Presser animator global widget

import 'package:flutter/material.dart';



class PresserAnimator extends StatelessWidget {

  final ValueNotifier <bool> isPressed;
  final double scaleRate;
  final double opacityRate;
  final int duration;
  final Widget child;


  const PresserAnimator ({
    super.key,
    required this.isPressed,
    this.scaleRate = 0.96,
    this.opacityRate = 0.66,
    this.duration = 80,
    required this.child
  });


  @override Widget build (BuildContext context) {

    final double opacity;
    final double scale;


    switch (isPressed.value) {

      case true:

        opacity = opacityRate;
        scale = scaleRate;

        break;

      case false:

        opacity = 1;
        scale = 1;

        break;

    }


    return (

      AnimatedOpacity (
        opacity: opacity,
        duration: Duration (
          milliseconds: duration
        ),
        child: AnimatedScale (
          scale: scale,
          duration: Duration (
            milliseconds: duration
          ),
          child: child
        )
      )

    );

  }

}