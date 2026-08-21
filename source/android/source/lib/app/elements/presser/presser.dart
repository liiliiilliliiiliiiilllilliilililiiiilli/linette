// Elements - Presser

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class Presser extends HookWidget {

  final ValueNotifier <bool> isPressed;
  final void Function () handleTap;
  final Widget child;


  const Presser ({
    super.key,
    required this.isPressed,
    required this.handleTap,
    required this.child
  });


  @override Widget build (BuildContext context) {

    return (

      Listener (
        onPointerDown: (event) {
          isPressed.value = true;
        },
        onPointerMove: (event) {
          final renderBox = context.findRenderObject () as RenderBox?;
          if (renderBox != null) {
            final localPos = renderBox.globalToLocal (event.position);
            final isInside = renderBox.size.contains (localPos);
            isPressed.value = isInside;
          }
        },
        onPointerUp: (event) {
          final renderBox = context.findRenderObject () as RenderBox?;
          if (renderBox != null) {
            final localPos = renderBox.globalToLocal (event.position);
            if (renderBox.size.contains (localPos)) {
              handleTap ();
            }
          }
          isPressed.value = false;
        },
        onPointerCancel: (_) {
          isPressed.value = false;
        },
        behavior: HitTestBehavior.opaque,
        child: child
      )

    );

  }

}