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

    final ObjectRef <Set <int>> activePointers = useRef ({});

    final ValueNotifier <bool> isAbsorbing = useState (false);


    void onPointerDown (PointerDownEvent event) {

      if (activePointers.value.isEmpty) {

        activePointers.value.add (event.pointer);

        isAbsorbing.value = true;

      }

    }

    void onPointerUp (PointerUpEvent event) {

      activePointers.value.remove (event.pointer);

      if (activePointers.value.isEmpty) {

        isAbsorbing.value = false;

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