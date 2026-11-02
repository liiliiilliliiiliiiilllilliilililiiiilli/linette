// Window global widget - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class BottomComponent extends HookConsumerWidget {

  final String action;


  const BottomComponent ({
    super.key,
    required this.action
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.watch (actionsFreezeProvider.notifier);


    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () {

      actionsFreezeNotifier.freeze ();

      Navigator.pop (context);

    }


    return (

      Presser (
        isPressed: isPressed,
        onPress: onPress,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.98,
          child: Container (
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only (
              top: 12,
              right: 4 + 32,
              bottom: 12 + 4
            ),
            child: Text (
              action,
              style: TextStyle (
                fontFamily: 'Fedoka',
                fontWeight: FontWeight.w400,
                fontSize: 16.5,
                color: context.colors.windowBottomText
              )
            )
          )
        )
      )

    );

  }

}