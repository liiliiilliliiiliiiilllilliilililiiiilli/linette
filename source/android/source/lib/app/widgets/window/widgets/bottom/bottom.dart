// Window global widget - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class BottomComponent extends HookConsumerWidget {

  final String action;
  final ValueNotifier <bool>? activity;


  const BottomComponent ({
    super.key,
    required this.action,
    this.activity
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    final bool ignoring;

    if (activity case final activity?) {

      ignoring = !activity.value;

    }

    else {

      ignoring = false;

    }


    final Color color;

    if (activity case final activity?) {

      color = activity.value
        ? context.colors.windowBottomText
        : context.colors.windowBottomTextNotActive;

    }

    else {

      color = context.colors.windowBottomText;

    }


    return (

      IgnorePointer (
        ignoring: ignoring,
        child: Presser (
          onPress: onPress,
          isPressed: isPressed,
          child: PresserAnimator (
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
                  fontWeight: FontWeight.w400,
                  fontSize: 15.5,
                  color: color
                )
              )
            )
          )
        )
      )

    );

  }

}