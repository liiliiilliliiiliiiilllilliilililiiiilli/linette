// Window global widget - Body - Switch title

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class SwitchTitle extends HookWidget {

  final String text;
  final bool value;


  const SwitchTitle (
    this.text, {
    super.key,
    required this.value
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> switchState = useState (value);


    void switchOnChanged (bool change) {

      switchState.value = !switchState.value;

    }


    return (

      Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text (
            text,
            style: TextStyle (
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: context.colors.windowBodyTitle
            )
          ),
          SwitchComponent (
            value: switchState.value,
            onChanged: switchOnChanged
          )
        ]
      )

    );

  }

}