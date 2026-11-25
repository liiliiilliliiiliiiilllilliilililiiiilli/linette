// Switch global widget

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class SwitchComponent extends StatelessWidget {

  final bool value;
  final void Function (bool)? onChanged;


  const SwitchComponent ({
    super.key,
    required this.value,
    this.onChanged
  });


  @override Widget build (BuildContext context) {

    return (

      SizedBox (
        height: 34,
        child: FittedBox (
          fit: BoxFit.contain,
          child: Switch (
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: onChanged,
            activeTrackColor: context.colors.switchBackActive,
            inactiveTrackColor: context.colors.switchBackNotActive,
            activeThumbColor: context.colors.switchTrackActive,
            inactiveThumbColor: context.colors.switchTrackNotActive,
            trackOutlineColor: WidgetStateProperty.resolveWith <Color?> ((states) =>
              states.contains (WidgetState.selected)
                ? context.colors.switchBorderActive
                : context.colors.switchBorderNotActive
            ),
            trackOutlineWidth: const WidgetStatePropertyAll (2)
          )
        )
      )

    );

  }

}