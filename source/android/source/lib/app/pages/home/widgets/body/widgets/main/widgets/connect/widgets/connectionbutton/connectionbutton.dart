// Home page - Body - Main - Connect - Connection button

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class ConnectionButton extends HookWidget {

  const ConnectionButton ({super.key});


  @override Widget build (BuildContext context) {

    final isPressed = useState (false);


    void handleTap () {}


    return (

      Center (
        child: Presser (
          isPressed: isPressed,
          handleTap: handleTap,
          child: AnimatorPresser (
            isPressed: isPressed,
            child: Opacity (
              opacity: 0.9,
              child: AnimatedContainer (
                duration: const Duration (
                  milliseconds: 80
                ),
                width: 225,
                height: 225,
                padding: const EdgeInsets.all (32),
                decoration: BoxDecoration (
                  border: Border.all (
                    width: 4,
                    color: context.colors.black
                  ),
                  borderRadius: BorderRadius.circular (1000),
                  boxShadow: [
                    BoxShadow (
                      color: context.colors.black.withAlpha (150),
                      offset: isPressed.value ? const Offset (0, 5 * 0.825) : const Offset (0, 5),
                      blurRadius: isPressed.value ? 8 * 0.825 : 8,
                      spreadRadius: isPressed.value ? 2.5 * 0.825 : 2.5
                    )
                  ],
                  color: context.colors.prime
                ),
                child: Center (
                  child: Transform.translate (
                    offset: const Offset (0, -2),
                    child: Transform.rotate (
                      angle: 5 * math.pi / 180,
                      child: SvgPicture.asset (context.icons.olive)
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