// Connections page - Body - Connections - Connection

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'widgets/country/country.dart';
import 'widgets/choicestatus/choicestatus.dart';
import 'widgets/availabilitystatus/availabilitystatus.dart';



class Connection extends HookWidget {

  final void Function () onPress;
  final String flag;
  final String name;
  final bool isChosen;
  final bool isAvailable;


  const Connection ({
    super.key,
    required this.onPress,
    required this.flag,
    required this.name,
    required this.isChosen,
    required this.isAvailable
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final Color colorBorder = isChosen
      ? context.colors.blockBorder
      : context.colors.block;


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.975,
          child: Container (
            padding: const EdgeInsets.fromLTRB (16 + 4, 14, 32 + 4, 14),
            decoration: BoxDecoration (
              border: Border.all (
                width: 2,
                color: colorBorder
              ),
              borderRadius: BorderRadius.circular (16),
              color: context.colors.block
            ),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Country (
                  flag: flag,
                  name: name
                ),
                ChoiceStatus (isChosen),
                AvailabilityStatus (isAvailable)
              ]
            )
          )
        )
      )

    );

  }

}