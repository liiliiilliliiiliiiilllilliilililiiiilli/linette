// Window global widget - Body - Action - Switch activity

import 'package:flutter/material.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class SwitchActivity extends StatelessWidget {

  final ValueNotifier <bool> state;


  const SwitchActivity (
    this.state, {
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      IgnorePointer (
        child: Transform.translate (
          offset: const Offset (3.25, 0),
          child: SwitchComponent (
            value: state.value,
            onChanged: (cahnge) {}
          )
        )
      )

    );

  }

}