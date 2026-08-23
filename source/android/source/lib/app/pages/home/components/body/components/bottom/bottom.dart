// Home page - Body - Bottom

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';
import 'components/hintwindow/hintwindow.dart';



class Bottom extends HookWidget {

  const Bottom ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    final String text_1 = T.of(context).readMore_1;
    final String text_2 = T.of(context).readMore_2;


    void handleTap () async {

      print ('Нажата кнопка "Подробнее"!');


      await Future.delayed (Duration (milliseconds: 150));

      if (!context.mounted) return;


      showGeneralDialog (
        context: context,
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        barrierColor: Colors.black.withAlpha (128),
        transitionDuration: Duration (milliseconds: 175),
        pageBuilder: (context, animation, secondaryAnimation) {

          return (

            HintWindow ()

          );

        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {

          final fadeAnimation = CurvedAnimation (
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

          final scaleAnimation = Tween <double> (begin: 0.975, end: 1.0).animate (
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
      );

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        behavior: HitTestBehavior.opaque,
        child: ClipRect (
          child: BackdropFilter (
            filter: ImageFilter.blur (
              sigmaX: 150,
              sigmaY: 150
            ),
            child: Container (
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.fromLTRB (25, 16, 25, 16),
              decoration: BoxDecoration (
                border: Border (
                  top: BorderSide (
                    width: 2,
                    color: context.colors.bottomBarBorder
                  )
                ),
                color: context.colors.bottomBarBack
              ),
              child: AnimatorPresser (
                isPressed: isPressed,
                scaleRate: 0.975,
                child: AnimatedContainer (
                  duration: Duration (
                    milliseconds: 80
                  ),
                  transform: Matrix4.translationValues (0, isPressed.value ? -1.0 : 0.0, 0),
                  child: Center (
                    child: Text.rich (
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      TextSpan (
                        style: TextStyle (
                          fontFamily: 'Fredoka',
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                        ),
                        children: [
                          TextSpan (
                            text: text_1,
                            style: TextStyle (
                              color: context.colors.textBottomBarPrime
                            )
                          ),
                          TextSpan (
                            text: text_2,
                            style: TextStyle (
                              color: context.colors.textBottomBar
                            )
                          )
                        ]
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}