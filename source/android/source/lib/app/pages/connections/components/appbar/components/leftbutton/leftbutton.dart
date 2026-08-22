// Connections page - App bar - Left button

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/presser/presser.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';



class LeftButton extends HookWidget {

  const LeftButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap (context) {

      print ('Нажата кнопка "назад"!');

      Navigator.pop (context);

    }


    return (

      Presser (
        isPressed: isPressed,
        handleTap: () => handleTap (context),
        child: AnimatorPresser (
          isPressed: isPressed,
          child: AnimatedContainer (
            duration: Duration (
              milliseconds: 80
            ),
            transform: Matrix4.translationValues (0, isPressed.value ? 1.0 : 0.0, 0),
            child: Center (
              child: Container (
                width: 38,
                height: 38,
                padding: EdgeInsets.all (7.5),
                decoration: BoxDecoration (
                  color: context.colors.appBarButtonBack,
                  border: Border.all (
                    width: 3,
                    color: context.colors.appBarButtonBorder
                  ),
                  borderRadius: BorderRadius.all (Radius.circular (100))
                ),
                child: Transform.translate (
                  offset: Offset (-1, 0),
                  child: Transform.rotate (
                    angle: 180 * math.pi / 180,
                    child: SvgPicture.asset (
                      context.icons.arrowNavigation,
                      colorFilter: ColorFilter.mode (
                        context.colors.iconArrowNavigation,
                        BlendMode.srcIn
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