// Presser global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class Presser extends HookWidget {

  final ValueNotifier <bool> isPressed;
  final void Function () action;
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
    required this.action,
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

      this.onTapDown?.call (details);

      isPressed.value = true;

    }

    void onTapUp (TapUpDetails details) {

      this.onTapUp?.call (details);

      isPressed.value = false;

      action ();

    }

    void onTapCancel () {

      this.onTapCancel?.call ();

      isPressed.value = false;

    }

    void onPanDown (DragDownDetails details) {

      this.onPanDown?.call (details);

      isPressed.value = true;

    }

    void onPanCancel () {

      this.onPanCancel?.call ();

      isPressed.value = false;

    }

    void onLongPressCancel () {

      this.onLongPressCancel?.call ();

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: onTapCancel,
        onPanDown: onPanDown,
        onPanCancel: onPanCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: child
      )

    );

  }

}