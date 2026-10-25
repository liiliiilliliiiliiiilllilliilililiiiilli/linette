// Welcome page - Body - Bottom - Button change language

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/windows/changelanguage/changelanguage.dart';
import 'package:linette/app/widgets/textbutton/textbutton.dart';



class ButtonChangeLanguage extends HookWidget {

  const ButtonChangeLanguage ({
    super.key
  });


  @override Widget build (BuildContext context) {

    void handleTap () async {

      await Future.delayed (const Duration (milliseconds: 150));

      if (!context.mounted) return;


      Widget pageBuilder (context, animation, secondaryAnimation) {

        return (

          const ChangeLanguageWindow ()

        );

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


      showGeneralDialog (
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

    }


    return (

      TextButtonComponent (
        iconLeft: context.icons.language,
        text: context.texts.pageWelcomeBottomChangeLanguage,
        onTap: handleTap
      )

    );

  }

}