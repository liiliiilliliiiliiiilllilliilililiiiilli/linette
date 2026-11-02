// Slider global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class SliderComponent extends HookWidget {

  final void Function ()? onSwipeLeft;
  final void Function ()? onSwipeRight;
  final Widget child;


  const SliderComponent ({
    super.key,
    this.onSwipeLeft,
    this.onSwipeRight,
    required this.child
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <double> startX = useState (0);

    const double safeZone = 38;

    final double screenWidth = MediaQuery.of(context).size.width;


    void onHorizontalDragStart (DragStartDetails details) {

      startX.value = details.globalPosition.dx;

    }

    void onHorizontalDragUpdate (DragUpdateDetails details) {

      if (details.delta.dx > 10) {

        if (startX.value > safeZone) {

          onSwipeLeft?.call ();

        }

      }

      else if (details.delta.dx < -10) {

        if (startX.value < (screenWidth - safeZone)) {

          onSwipeRight?.call ();

        }

      }

    }


    return (

      GestureDetector (
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        child: child
      )

    );

  }

}