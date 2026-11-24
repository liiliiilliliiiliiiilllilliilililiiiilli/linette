// Accout window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';
import 'widgets/notentered/notentered.dart';
import 'widgets/entered/entered.dart';



class AccoutWindow extends HookConsumerWidget {

  const AccoutWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> didEnter = useState (true);

    final ValueNotifier <bool> actionIsActive = useState (true);


    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    final ActionColorModel color = !actionIsActive.value
      ? ActionColorModel.disabled
      : ActionColorModel.green;


    return (

      Window (
        width: 340,
        title: context.texts.windowAccountNotEnteredTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 14,
            left: 20,
            right: 20,
            bottom: 14
          ),
          child: (!didEnter.value) ? (
            const NotEntered ()
          ) : (
            const Entered ()
          )
        ),
        actionRight: ActionModel (
          context.texts.windowAccountEnteredAction,
          onPress: actionRightOnPress,
          isDisabled: !actionIsActive.value,
          color: color
        )
      )

    );

  }

}