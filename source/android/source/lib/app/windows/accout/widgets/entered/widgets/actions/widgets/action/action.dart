// Accout window - Entered - Actions - Action

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/character/character.dart';



class ActionComponent extends HookWidget {

  final String text;
  final ActionCharacter character;


  const ActionComponent (
    this.text, {
    super.key,
    required this.character
  });


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void onPress () {



    }


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
            children: [
              Text (
                text,
                style: TextStyle (
                  fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  color: color
                )
              ),
              SvgPicture.asset (
                context.icons.windowBodyAction,
                width: 12.5,
                height: 12.5,
                colorFilter: ColorFilter.mode (
                  color,
                  BlendMode.srcIn
                )
              )
            ]
          )
        )
      )

    );

  }

}