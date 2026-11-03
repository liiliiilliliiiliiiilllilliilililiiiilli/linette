// Home page - Body - Bottom

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';
import 'package:linette/app/windows/hint/hint.dart';



class Bottom extends HookConsumerWidget {

  const Bottom ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed = useState (false);


    void onPress () async {

      context.methods.openWindow (
        context: context,
        ref: ref,
        window: const HintWindow (),
        callback: () => {}
      );

    }

    bool isInDeadZone (double localY) {

      const double componentHeight = 80;
      const double deadZoneHeight = 9.25;


      final bool isInDeadZone = localY > (componentHeight - deadZoneHeight);


      return isInDeadZone;

    }

    void onTapDown (TapDownDetails details) {

      if (!isInDeadZone (details.localPosition.dy)) {

        isPressed.value = true;

      }

    }

    void onTapUp (TapUpDetails details) {

      isPressed.value = false;

      if (!isInDeadZone (details.localPosition.dy)) {

        onPress ();

      }

    }

    void onPanDown (DragDownDetails details) {

      if (!isInDeadZone (details.localPosition.dy)) {

        isPressed.value = true;

      }

    }


    final double translationYValue = isPressed.value
      ? -1
      : 0;


    return (

      Presser (
        isPressed: isPressed,
        onPress: onPress,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onPanDown: onPanDown,
        child: ClipRect (
          child: BackdropFilter (
            filter: ImageFilter.blur (
              sigmaX: 150,
              sigmaY: 150
            ),
            child: Container (
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.fromLTRB (25, 16, 25, 16),
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
                  duration: const Duration (
                    milliseconds: 80
                  ),
                  transform: Matrix4.translationValues (0, translationYValue, 0),
                  child: Center (
                    child: Text.rich (
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      TextSpan (
                        style: TextStyle (
                          fontFamily: context.fonts.archivo,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.75
                        ),
                        children: [
                          TextSpan (
                            text: context.texts.pageHomeBottom_1,
                            style: TextStyle (
                              color: context.colors.bottomBarTextPrime
                            )
                          ),
                          TextSpan (
                            text: context.texts.pageHomeBottom_2,
                            style: TextStyle (
                              color: context.colors.bottomBarText
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