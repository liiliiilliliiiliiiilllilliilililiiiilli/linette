// Window global widget - Body - Action - Transition activity

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import '../../models/character/character.dart';



class TransitionActivity extends StatelessWidget {

  final ActionCharacter character;


  const TransitionActivity ({
    super.key,
    this.character = ActionCharacter.regular
  });


  @override Widget build (BuildContext context) {

    final Color color = (character == ActionCharacter.regular)
      ? context.colors.windowBodyActionRegular
      : context.colors.windowBodyActionCritical;


    return (

      SvgPicture.asset (
        context.icons.windowBodyActionTransition,
        width: 14.25,
        height: 14.25,
        colorFilter: ColorFilter.mode (
          color,
          BlendMode.srcIn
        )
      )

    );

  }

}