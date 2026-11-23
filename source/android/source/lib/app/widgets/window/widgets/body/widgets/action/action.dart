// Window global widget - Body - Action

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/character/character.dart';



class ActionComponent extends HookWidget {

  final String text;
  final Function () onPress;
  final ActionCharacter character;
  final Widget activity;


  const ActionComponent (
    this.text, {
    super.key,
    required this.onPress,
    this.character = ActionCharacter.regular,
    required this.activity
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final Color color = (character == ActionCharacter.regular)
      ? context.colors.windowBodyActionRegular
      : context.colors.windowBodyActionCritical;


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
                    color: color
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