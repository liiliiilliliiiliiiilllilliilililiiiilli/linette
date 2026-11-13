// Accout window - Entered - Actions

import 'package:flutter/material.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'widgets/line/line.dart';
import 'widgets/action/action.dart';



class ActionsComponent extends StatelessWidget {

  const ActionsComponent ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          ActionComponent (context.texts.windowAccountEnteredBodyActionsSavedConnections),
          ActionComponent (context.texts.windowAccountEnteredBodyActionsPublishedConnections),
          Line (),
          ActionComponent (context.texts.windowAccountEnteredBodyActionsExit),
          ActionComponent (context.texts.windowAccountEnteredBodyActionsDeleteAccount)
        ]
      )

    );

  }

}