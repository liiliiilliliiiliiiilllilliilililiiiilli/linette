// Accout window - Entered - Actions

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'widgets/action/action.dart';
import 'widgets/action/models/character/character.dart';
import 'widgets/separator/separator.dart';



class ActionsComponent extends StatelessWidget {

  const ActionsComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        spacing: 8 * 3,
        children: [
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsSavedConnections,
            character: ActionCharacter.regular
          ),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsPublishedConnections,
            character: ActionCharacter.regular
          ),
          const Separator (),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsExit,
            character: ActionCharacter.critical
          ),
          ActionComponent (
            context.texts.windowAccountEnteredBodyActionsDeleteAccount,
            character: ActionCharacter.critical
          )
        ]
      )

    );

  }

}