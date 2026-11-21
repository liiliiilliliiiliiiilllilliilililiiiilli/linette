// Arsenal window - Tabs - Tab

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class TabComponent extends HookWidget {

  final String text;
  final bool isChosen;
  final Function () onPress;


  const TabComponent (
    this.text, {
    super.key,
    required this.isChosen,
    required this.onPress
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final Color colorBorder;
    final Color colorBack;
    final Color colorText;


    switch (isChosen) {

      case true:

        colorBorder = context.colors.windowBodyTabChosenBorder;
        colorBack = context.colors.windowBodyTabChosenBack;
        colorText = context.colors.windowBodyTabChosenText;

        break;

      case false:

        colorBorder = context.colors.windowBodyTabNotChosenBorder;
        colorBack = context.colors.windowBodyTabNotChosenBack;
        colorText = context.colors.windowBodyTabNotChosenText;

        break;

    }


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.965,
          child: Container (
            padding: const EdgeInsets.symmetric (
              horizontal: 12,
              vertical: 4
            ),
            decoration: BoxDecoration (
              border: Border.all (
                width: 2,
                color: colorBorder
              ),
              borderRadius: BorderRadius.circular (10),
              color: colorBack
            ),
            child: Text (
              text,
              style: TextStyle (
                fontWeight: FontWeight.w500,
                fontSize: 15.5,
                color: colorText
              )
            )
          )
        )
      )

    );

  }

}