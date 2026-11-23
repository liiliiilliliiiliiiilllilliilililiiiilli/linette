// Accout window - Entered

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'widgets/user/user.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/action.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/widgets/transitionactivity/transitionactivity.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/models/character/character.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/separator/separator.dart';



class Entered extends StatelessWidget {

  const Entered ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 3,
        children: [
          const User (),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsSavedConnections,
            onPress: () {},
            character: ActionCharacter.regular,
            activity: const TransitionActivity ()
          ),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsPublishedConnections,
            onPress: () {},
            character: ActionCharacter.regular,
            activity: const TransitionActivity ()
          ),
          const Separator (),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsExit,
            onPress: () {},
            character: ActionCharacter.critical,
            activity: const TransitionActivity (
              character: ActionCharacter.critical
            )
          ),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsDeleteAccount,
            onPress: () {},
            character: ActionCharacter.critical,
            activity: const TransitionActivity (
              character: ActionCharacter.critical
            )
          )
        ]
      )

    );

  }

}