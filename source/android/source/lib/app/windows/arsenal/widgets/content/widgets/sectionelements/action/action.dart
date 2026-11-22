// Arsenal window - Content - Action section element

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class ActionComponent extends HookWidget {

  final String text;
  final Function () onPress;
  final Widget activity;


  const ActionComponent (
    this.text, {
    super.key,
    required this.onPress,
    required this.activity
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          scaleRate: 0.9775,
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Expanded (
                child: Text (
                  text,
                  style: TextStyle (
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5,
                    color: context.colors.windowBodyActionRegular
                  )
                )
              ),
              activity
            ]
          )
        )
      )

    );

  }

}