// Presser global widget

import 'package:flutter/material.dart';



class Presser extends StatelessWidget {

  final ValueNotifier <bool> isPressed;
  final void Function () onPress;
  final void Function (TapDownDetails details)? onTapDown;
  final void Function (TapUpDetails details)? onTapUp;
  final void Function ()? onTapCancel;
  final void Function (DragDownDetails details)? onPanDown;
  final void Function ()? onPanCancel;
  final void Function ()? onLongPressCancel;
  final Widget child;


  const Presser ({
    super.key,
    required this.isPressed,
    required this.onPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onPanDown,
    this.onPanCancel,
    this.onLongPressCancel,
    required this.child
  });


  @override Widget build (BuildContext context) {

    void onTapDown (TapDownDetails details) {

      isPressed.value = true;

    }

    void onTapUp (TapUpDetails details) {

      isPressed.value = false;

      onPress ();

    }

    void onTapCancel () {

      isPressed.value = false;

    }

    void onPanDown (DragDownDetails details) {

      isPressed.value = true;

    }

    void onPanCancel () {

      isPressed.value = false;

    }

    void onLongPressCancel () {

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTapDown: this.onTapDown ?? onTapDown,
        onTapUp: this.onTapUp ?? onTapUp,
        onTapCancel: this.onTapCancel ?? onTapCancel,
        onPanDown: this.onPanDown ?? onPanDown,
        onPanCancel: this.onPanCancel ?? onPanCancel,
        onLongPressCancel: this.onLongPressCancel ?? onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: child
      )

    );

  }

}