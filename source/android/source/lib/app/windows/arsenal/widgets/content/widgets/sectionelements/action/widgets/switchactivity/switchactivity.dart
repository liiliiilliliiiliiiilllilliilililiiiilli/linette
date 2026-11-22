// Arsenal window - Content - Action section element - Switch activity

import 'package:flutter/material.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class SwitchActivity extends StatelessWidget {

  final ValueNotifier <bool> value;


  const SwitchActivity (
    this.value, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      IgnorePointer (
        child: Transform.translate (
          offset: const Offset (3.25, 0),
          child: SwitchComponent (
            value: value.value,
            onChanged: (cahnge) {}
          )
        )
      )

    );

  }

}