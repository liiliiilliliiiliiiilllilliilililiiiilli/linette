// Home page - Body - Bottom

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/hintwindow/hintwindow.dart';
import 'package:linette/app/elements/presser/presser.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';



class Bottom extends HookWidget {

  const Bottom ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    final String text_1 = 'Подробнее';
    final String text_2 = ' о сервисе, который создан для обхода ограничений.';


    void handleTap () {

      print ('Нажата кнопка "Подробнее"!');

      showDialog (
        context: context,
        builder: (BuildContext context) {

          return (

            HintWindow ()

          );

        }
      );

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: handleTap,
        child: Center (
          child: ClipRect (
            child: BackdropFilter (
              filter: ImageFilter.blur (
                sigmaX: 150,
                sigmaY: 150
              ),
              child: Container (
                padding: EdgeInsets.fromLTRB (25, 16, 25, 16),
                decoration: BoxDecoration (
                  border: Border (
                    top: BorderSide (
                      width: 2,
                      color: context.colors.black
                    )
                  ),
                  color: context.colors.barBack.withAlpha (128)
                ),
                child: AnimatorPresser (
                  isPressed: isPressed,
                  scaleRate: 0.975,
                  child: RichText (
                    text: TextSpan (
                      style: TextStyle (
                        fontFamily: 'Fredoka',
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                      children: [
                        TextSpan (
                          text: text_1,
                          style: TextStyle (
                            color: context.colors.prime
                          )
                        ),
                        TextSpan (
                          text: text_2,
                          style: TextStyle (
                            color: context.colors.grey
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

    );

  }

}