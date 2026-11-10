// App bar button global widget

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';
import 'models/icon/icon.dart';
import 'models/shape/shape.dart';



class AppBarButton extends HookWidget {

  final void Function () onPress;
  final AppBarButtonShape shape;
  final AppBarButtonIcon icon;


  const AppBarButton ({
    super.key,
    required this.onPress,
    required this.shape,
    required this.icon
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final double translationYValue = isPressed.value
      ? 1
      : 0;


    final double borderRadius = (shape == AppBarButtonShape.circle)
      ? 100
      : 10;


    return (

      SizedBox (
        width: 56,
        height: 56,
        child: Presser (
          onPress: onPress,
          isPressed: isPressed,
          child: PresserAnimator (
            isPressed: isPressed,
            child: AnimatedContainer (
              transform: Matrix4.translationValues (0, translationYValue, 0),
              duration: const Duration (
                milliseconds: 80
              ),
              child: Center (
                child: Container (
                  width: 38,
                  height: 38,
                  padding: const EdgeInsets.all (7.5),
                  decoration: BoxDecoration (
                    border: Border.all (
                      width: 3,
                      color: context.colors.appBarButtonBorder
                    ),
                    borderRadius: BorderRadius.all (Radius.circular (borderRadius)),
                    color: context.colors.appBarButtonBack,
                  ),
                  child: Transform.translate (
                    offset: icon.offset,
                    child: Transform.rotate (
                      angle: icon.angle * math.pi / 180,
                      child: SvgPicture.asset (
                        icon.asset,
                        width: icon.size,
                        height: icon.size,
                        colorFilter: ColorFilter.mode (
                          context.colors.appBarButtonIcon,
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
      )

    );

  }

}