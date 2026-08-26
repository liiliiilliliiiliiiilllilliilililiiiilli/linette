// Global widgets - Animator presser

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class AnimatorPresser extends HookWidget {

  final double scaleRate;
  final double opacityRate;
  final int duration;
  final ValueNotifier <bool> isPressed;
  final Widget child;


  const AnimatorPresser ({
    super.key,
    this.scaleRate = 0.96,
    this.opacityRate = 0.66,
    this.duration = 80,
    required this.isPressed,
    required this.child
  });


  @override Widget build (BuildContext context) {

    final double opacity = isPressed.value
      ? opacityRate
      : 1;

    final double scale = isPressed.value
      ? scaleRate
      : 1;


    return (

      AnimatedOpacity (
        duration: Duration (
          milliseconds: duration
        ),
        opacity: opacity,
        child: AnimatedScale (
          duration: Duration (
            milliseconds: duration
          ),
          scale: scale,
          child: child
        )
      )

    );

  }

}