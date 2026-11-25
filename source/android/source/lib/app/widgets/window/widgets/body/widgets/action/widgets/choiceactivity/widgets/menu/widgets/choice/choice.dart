// Window global widget - Body - Action - Choice activity - Menu - Choice

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class Choice extends HookWidget {

  final String text;
  final void Function () onPress;
  final bool isChosen;


  const Choice (
    this.text, {
    super.key,
    required this.onPress,
    required this.isChosen
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final Color color = isChosen
      ? context.colors.windowBodyActionChoiceActivityTextChosen
      : context.colors.windowBodyActionChoiceActivityTextNotChosen;


    return (

      Presser (
        onPress: onPress,
        isPressed: isPressed,
        child: PresserAnimator (
          isPressed: isPressed,
          child: Row (
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              if (isChosen) ... [
                SvgPicture.asset (
                  context.icons.windowBodyActionChoiceVariant,
                  width: 12.5,
                  height: 12.5,
                  colorFilter: ColorFilter.mode (
                    context.colors.windowBodyActionChoiceActivityTextChosen,
                    BlendMode.srcIn
                  )
                )
              ],
              Text (
                text,
                style: TextStyle (
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  height: 1,
                  color: color
                )
              )
            ]
          )
        )
      )

    );

  }

}