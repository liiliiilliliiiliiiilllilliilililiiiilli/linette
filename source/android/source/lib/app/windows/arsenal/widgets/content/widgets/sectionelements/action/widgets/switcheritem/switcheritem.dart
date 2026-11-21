// Arsenal window - Content - Action - Switcher item

import 'package:flutter/material.dart';
import 'package:linette/app/widgets/switch/switch.dart';



class SwitcherItem extends StatelessWidget {

  final ValueNotifier <bool> value;
  final Function (bool)? onChanged;


  const SwitcherItem ({
    super.key,
    required this.value,
    this.onChanged
  });


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: const Offset (3.25, 0),
        child: SwitchComponent (
          value: value.value,
          onChanged: onChanged
        )
      )

    );

  }

}