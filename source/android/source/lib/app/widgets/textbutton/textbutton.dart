// Text button global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'package:linette/app/widgets/presseranimator/presseranimator.dart';



class TextButtonComponent extends HookWidget {

  final String? iconLeft;
  final double? iconLeftSize;
  final String text;
  final String? iconRight;
  final double? iconRightSize;
  final void Function () onPress;


  const TextButtonComponent ({
    super.key,
    this.iconLeft,
    this.iconLeftSize,
    required this.text,
    this.iconRight,
    this.iconRightSize,
    required this.onPress
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final double iconLeftWidth = iconLeftSize ?? 20;
    final double iconLeftHeight = iconLeftSize ?? 20;
    final double iconRightWidth = iconRightSize ?? 20;
    final double iconRightHeight = iconRightSize ?? 20;


    return (

      Presser (
        isPressed: isPressed,
        onPress: onPress,
        child: Padding (
          padding: const EdgeInsets.all (8),
          child: PresserAnimator (
            isPressed: isPressed,
            scaleRate: 0.97,
            child: Row (
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                if (iconLeft != null) ... [
                  SvgPicture.asset (
                    iconLeft!,
                    colorFilter: ColorFilter.mode (
                      context.colors.textButton,
                      BlendMode.srcIn
                    ),
                    width: iconLeftWidth,
                    height: iconLeftHeight
                  )
                ],
                Container (
                  height: 25,
                  alignment: Alignment.center,
                  child: Text (
                    text,
                    style: TextStyle (
                      fontFamily: context.fonts.archivo,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: context.colors.textButton
                    )
                  )
                ),
                if (iconRight != null) ... [
                  SvgPicture.asset (
                    iconRight!,
                    colorFilter: ColorFilter.mode (
                      context.colors.textButton,
                      BlendMode.srcIn
                    ),
                    width: iconRightWidth,
                    height: iconRightHeight
                  )
                ]
              ]
            )
          )
        )
      )

    );

  }

}