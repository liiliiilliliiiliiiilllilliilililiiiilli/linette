// Window global widget - Body - Switcher title

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class SwitcherTitle extends HookWidget {

  final String text;
  final bool state;


  const SwitcherTitle (
    this.text, {
    super.key,
    required this.state
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> state = useState (false);


    void onChanged (bool change) {

      state.value = !state.value;

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
            value: state.value,
            onChanged: onChanged
          )
        ]
      )

    );

  }

}