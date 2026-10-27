// Text button global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';



class TextButtonComponent extends HookWidget {

  final String? iconLeft;
  final double? iconLeftSize;
  final String text;
  final String? iconRight;
  final double? iconRightSize;
  final Function () onTap;


  const TextButtonComponent ({
    super.key,
    this.iconLeft,
    this.iconLeftSize,
    required this.text,
    this.iconRight,
    this.iconRightSize,
    required this.onTap
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    final iconLeftWidth = iconLeftSize ?? 20;
    final iconLeftHeight = iconLeftSize ?? 20;
    final iconRightWidth = iconRightSize ?? 20;
    final iconRightHeight = iconRightSize ?? 20;


    void onPanDown (details) {

      isPressed.value = true;

    }

    void onTapUp (details) {

      isPressed.value = false;

    }

    void onPanCancel () {

      isPressed.value = false;

    }

    void onTapCancel () {

      isPressed.value = false;

    }

    void onLongPressCancel () {

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTap: onTap,
        onPanDown: onPanDown,
        onTapUp: onTapUp,
        onPanCancel: onPanCancel,
        onTapCancel: onTapCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
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
              Text (
                text,
                style: TextStyle (
                  fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: context.colors.textButton
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

    );

  }

}