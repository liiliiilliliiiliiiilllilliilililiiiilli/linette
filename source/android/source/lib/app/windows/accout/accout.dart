// Accout window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'widgets/entered/entered.dart';
import 'widgets/notentered/notentered.dart';



class AccoutWindow extends HookWidget {

  const AccoutWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> actionActivity = useState (false);

    const bool didEnter = true;


    return (

      Window (
        width: 340,
        title: context.texts.windowAccountNotEnteredTitle,
        body: const SingleChildScrollView (
          child: Padding (
            padding: EdgeInsets.only (
              top: 10 * 1.5,
              left: 2.5 * 1.5,
              right: 2.5 * 1.5,
              bottom: 10 * 1.5
            ),
            child: (didEnter) ? (
              NotEntered ()
            ) : (
              Entered ()
            )
          )
        ),
        action: context.texts.windowAccountNotEnteredAction,
        actionActivity: actionActivity
      )

    );

  }

}