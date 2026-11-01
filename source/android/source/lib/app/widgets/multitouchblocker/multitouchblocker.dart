// Multitouch blocker global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class MultitouchBlocker extends HookWidget {

  final Widget child;


  const MultitouchBlocker ({
    super.key,
    required this.child
  });


  @override Widget build (BuildContext context) {

    final activePointers = useRef <Set <int> > ({});  // Храним id активных пальцев на экране в useRef (без лишних перерисовок)

    final isAbsorbing = useState <bool> (false);  // Состояние, которое включает / выключает AbsorbPointer на весь экран


    void onPointerDown (PointerDownEvent event) {

      // Если экран пустой, то регистрируем первый палец и блокируем мультитач:

      if (activePointers.value.isEmpty) {

        activePointers.value.add (event.pointer);

        isAbsorbing.value = true;

      }

    }

    void onPointerUp (PointerUpEvent event) {

      activePointers.value.remove (event.pointer);

      if (activePointers.value.isEmpty) {

        isAbsorbing.value = false;  // Разрешаем нажатия, если убраны все пальцы

      }

    }

    void onPointerCancel (PointerCancelEvent event) {

      activePointers.value.remove (event.pointer);

      if (activePointers.value.isEmpty) {

        isAbsorbing.value = false;

      }

    }


    return (

      Listener (
        onPointerDown: onPointerDown,
        onPointerUp: onPointerUp,
        onPointerCancel: onPointerCancel,
        child: AbsorbPointer (
          absorbing: isAbsorbing.value,
          child: child
        )
      )

    );

  }

}