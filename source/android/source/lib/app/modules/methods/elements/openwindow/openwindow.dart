// Methods module - Open window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';



class OpenWindowElement {

  static Future <void> openWindow (BuildContext context, WidgetRef ref, {required Widget window, void Function ()? callback}) async {

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.read (actionsFreezeProvider.notifier);


    actionsFreezeNotifier.freeze ();


    callback?.call ();


    await Future.delayed (const Duration (milliseconds: 150));


    if (!context.mounted) {

      return;

    }


    Widget pageBuilder (context, animation, secondaryAnimation) {

      return window;

    }

    Widget transitionBuilder (context, animation, secondaryAnimation, child) {

      final CurvedAnimation fadeAnimation = CurvedAnimation (
        parent: animation,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn
      );


      if (animation.status == AnimationStatus.reverse) {

        return (

          FadeTransition (
            opacity: fadeAnimation,
            child: child
          )

        );

      }


      final Animation <double> scaleAnimation = Tween(begin: 0.975, end: 1.0).animate(
        CurvedAnimation (
          parent: animation,
          curve: Curves.easeOut
        )
      );


      return (

        FadeTransition (
          opacity: fadeAnimation,
          child: ScaleTransition (
            scale: scaleAnimation,
            child: child
          )
        )

      );

    }


    await showGeneralDialog (
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: context.colors.windowBarrier,
      transitionDuration: const Duration (
        milliseconds: 175
      ),
      pageBuilder: pageBuilder,
      transitionBuilder: transitionBuilder
    );


    if (!context.mounted) {

      return;

    }


    actionsFreezeNotifier.freeze ();

  }

}