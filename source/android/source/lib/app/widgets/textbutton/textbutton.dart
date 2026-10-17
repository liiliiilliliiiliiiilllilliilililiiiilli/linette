// Global widgets - Text button

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class TextButtonComponent extends HookWidget {

  final String? pictureLeft;
  final double? pictureLeftSize;
  final String text;
  final String? pictureRight;
  final double? pictureRightSize;
  final Function () onTap;


  const TextButtonComponent ({
    super.key,
    this.pictureLeft,
    this.pictureLeftSize,
    required this.text,
    this.pictureRight,
    this.pictureRightSize,
    required this.onTap
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final pictureLeftWidth = pictureLeftSize ?? 20;
    final pictureLeftHeight = pictureLeftSize ?? 20;
    final pictureRightWidth = pictureRightSize ?? 20;
    final pictureRightHeight = pictureRightSize ?? 20;


    return (

      GestureDetector (
        onTap: onTap,
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Row (
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              if (pictureLeft != null) ... [
                SvgPicture.asset (
                  pictureLeft!,
                  colorFilter: ColorFilter.mode (
                    context.colors.prime,
                    BlendMode.srcIn
                  ),
                  width: pictureLeftWidth,
                  height: pictureLeftHeight
                )
              ],
              Text (
                text,
                style: TextStyle (
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: context.colors.prime
                )
              ),
              if (pictureRight != null) ... [
                SvgPicture.asset (
                  pictureRight!,
                  colorFilter: ColorFilter.mode (
                    context.colors.prime,
                    BlendMode.srcIn
                  ),
                  width: pictureRightWidth,
                  height: pictureRightHeight
                )
              ]
            ]
          )
        )
      )

    );

  }

}